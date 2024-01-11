import 'dart:developer';

import 'package:checkout_payment_app/core/utils/api_keys.dart';
import 'package:checkout_payment_app/core/widgets/custom_button.dart';
import 'package:checkout_payment_app/features/payment/data/models/amount_model/amount_model.dart';
import 'package:checkout_payment_app/features/payment/data/models/amount_model/details.dart';
import 'package:checkout_payment_app/features/payment/data/models/item_list_model/item.dart';
import 'package:checkout_payment_app/features/payment/data/models/item_list_model/item_list_model.dart';
import 'package:checkout_payment_app/features/payment/data/models/payment_intent_input_model.dart';
import 'package:checkout_payment_app/features/payment/presentation/manager/cubit/payment_cubit.dart';
import 'package:checkout_payment_app/features/payment/presentation/views/thank_you_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({
    super.key,
    required this.isPaypal,
  });

  final bool isPaypal;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state is PaymentSuccess) {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return const ThankYouView();
          }));
        }

        if (state is PaymentFailure) {
          Navigator.of(context).pop();
          SnackBar snackBar = SnackBar(content: Text(state.errorMessage));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        return CustomButton(
            onTap: () {
              if (isPaypal) {
                var transactionData = getTransactionData();

                executePayPalPayment(context, transactionData);
              } else {
                executeStripePayment(context);
              }
            },
            isLoading: state is PaymentLoading ? true : false,
            text: 'Continue');
      },
    );
  }

  void executeStripePayment(BuildContext context) {
    PaymentIntentInputModel paymentIntentInputModel = PaymentIntentInputModel(
        amount: '100', currency: 'USD', customerId: 'cus_PLKokmllNSTIeV');
    BlocProvider.of<PaymentCubit>(context)
        .makePayment(paymentIntentInputModel: paymentIntentInputModel);
  }

  void executePayPalPayment(BuildContext context,
      ({AmountModel amount, ItemListModel itemList}) transactionData) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext context) => PaypalCheckoutView(
        sandboxMode: true,
        clientId: ApiKeys.clientId,
        secretKey: ApiKeys.paypalSecretKey,
        transactions: [
          {
            "amount": transactionData.amount.toJson(),
            "description": "The payment transaction description.",
            "item_list": transactionData.itemList.toJson(),
          }
        ],
        note: "Contact us for any questions on your order.",
        onSuccess: (Map params) async {
          log("onSuccess: $params");
          Navigator.pushAndRemoveUntil(context,
              MaterialPageRoute(builder: (context) {
            return const ThankYouView();
          }), (route) {
            if (route.settings.name == '/') {
              return true;
            } else {
              return false;
            }
          });
        },
        onError: (error) {
          log("onError: $error");
          Navigator.pop(context);
        },
        onCancel: () {
          print('cancelled:');
          Navigator.pop(context);
        },
      ),
    ));
  }

  ({AmountModel amount, ItemListModel itemList}) getTransactionData() {
    var amount = AmountModel(
      currency: 'USD',
      total: "100",
      details: Details(
        shipping: "0",
        shippingDiscount: 0,
        subtotal: '100',
      ),
    );

    List<OrderItemModel> orders = [
      OrderItemModel(
        currency: 'USD',
        name: 'Apple',
        price: "10",
        quantity: 4,
      ),
      OrderItemModel(
        currency: 'USD',
        name: 'Pinapple',
        price: "12",
        quantity: 5,
      ),
    ];

    var itemList = ItemListModel(orders: orders);

    return (amount: amount, itemList: itemList);
  }
}
