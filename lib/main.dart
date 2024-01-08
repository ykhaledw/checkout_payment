import 'package:checkout_payment_app/features/payment/presentation/views/cart_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const PaymentFeature());
}

class PaymentFeature extends StatelessWidget {
  const PaymentFeature({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CartView(),
    );
  }
}
