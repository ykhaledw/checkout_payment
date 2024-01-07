import 'package:checkout_payment_app/core/widgets/custom_app_bar.dart';
import 'package:checkout_payment_app/features/payment/presentation/views/widgets/cart_view_body.dart';
import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(text: 'My Cart'),
      body: const CartViewBody(),
    );
  }
}
