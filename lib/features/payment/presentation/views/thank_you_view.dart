import 'package:checkout_payment_app/core/widgets/custom_app_bar.dart';
import 'package:checkout_payment_app/features/payment/presentation/views/widgets/thank_you_view_body.dart';
import 'package:flutter/material.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(),
      body: Transform.translate(
          offset: const Offset(0, -60), child: const ThankYouViewBody()),
    );
  }
}
