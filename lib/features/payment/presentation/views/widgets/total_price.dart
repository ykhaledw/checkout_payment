import 'package:checkout_payment_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Total',
          style: Styles.style24,
        ),
        Spacer(),
        Text(
          '\$50.97',
          style: Styles.style24,
        )
      ],
    );
  }
}
