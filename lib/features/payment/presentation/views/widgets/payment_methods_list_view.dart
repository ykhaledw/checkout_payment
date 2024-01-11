import 'package:checkout_payment_app/features/payment/presentation/views/widgets/payment_method_item.dart';
import 'package:flutter/material.dart';

class PaymentMethodsListView extends StatefulWidget {
  const PaymentMethodsListView({super.key, required this.upadatePaymentMethod});

  final Function({required int index}) upadatePaymentMethod;

  @override
  State<PaymentMethodsListView> createState() => _PaymentMethodsListViewState();
}

class _PaymentMethodsListViewState extends State<PaymentMethodsListView> {
  final List<String> paymentMethodsItems = [
    'assets/images/card.svg',
    'assets/images/paypal.svg',
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        itemCount: paymentMethodsItems.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: GestureDetector(
              onTap: () {
                activeIndex = index;
                setState(() {});
                widget.upadatePaymentMethod(index: activeIndex);
              },
              child: PaymentMethodItem(
                isActive: activeIndex == index,
                image: paymentMethodsItems[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
