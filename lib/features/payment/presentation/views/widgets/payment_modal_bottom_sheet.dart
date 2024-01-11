import 'package:checkout_payment_app/features/payment/presentation/views/widgets/custom_button_bloc_consumer.dart';
import 'package:checkout_payment_app/features/payment/presentation/views/widgets/payment_methods_list_view.dart';
import 'package:flutter/material.dart';

class PaymentModalBottomSheet extends StatefulWidget {
  const PaymentModalBottomSheet({super.key});

  @override
  State<PaymentModalBottomSheet> createState() =>
      _PaymentModalBottomSheetState();
}

class _PaymentModalBottomSheetState extends State<PaymentModalBottomSheet> {
  bool isPaypal = false;
  updatePaymentMethod({required int index}) {
    if (index == 0) {
      isPaypal = false;
    } else if (index == 1) {
      isPaypal = true;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 16,
          ),
          PaymentMethodsListView(upadatePaymentMethod: updatePaymentMethod),
          const SizedBox(
            height: 30,
          ),
          CustomButtonBlocConsumer(
            isPaypal: isPaypal,
          ),
        ],
      ),
    );
  }
}
