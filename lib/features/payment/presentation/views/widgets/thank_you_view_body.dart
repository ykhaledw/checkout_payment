import 'package:checkout_payment_app/features/payment/presentation/views/widgets/custom_check_icon.dart';
import 'package:checkout_payment_app/features/payment/presentation/views/widgets/custom_dashed_line.dart';
import 'package:checkout_payment_app/features/payment/presentation/views/widgets/thank_you_card.dart';
import 'package:flutter/material.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 60),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            const ThankYouCard(),
            const CustomCheckIcon(),
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.1,
              left: -20,
              child: const CircleAvatar(
                backgroundColor: Colors.white,
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.1,
              right: -20,
              child: const CircleAvatar(
                backgroundColor: Colors.white,
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.1 + 20,
              left: 20 + 8,
              right: 20 + 8,
              child: const CustomDashedLine(),
            ),
          ],
        ),
      ),
    );
  }
}
