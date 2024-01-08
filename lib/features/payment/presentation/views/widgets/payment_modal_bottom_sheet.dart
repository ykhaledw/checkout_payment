
import 'package:checkout_payment_app/features/payment/presentation/views/widgets/custom_button_bloc_consumer.dart';
import 'package:checkout_payment_app/features/payment/presentation/views/widgets/payment_methods_list_view.dart';
import 'package:flutter/material.dart';

class PaymentModalBottomSheet extends StatelessWidget {
  const PaymentModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 16,
          ),
          PaymentMethodsListView(),
          SizedBox(
            height: 30,
          ),
          CustomButtonBlocConsumer(),
        ],
      ),
    );
  }
}


