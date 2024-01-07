import 'package:checkout_payment_app/core/utils/styles.dart';
import 'package:checkout_payment_app/features/payment/presentation/views/widgets/card_info_widget.dart';
import 'package:checkout_payment_app/features/payment/presentation/views/widgets/payment_item_info.dart';
import 'package:checkout_payment_app/features/payment/presentation/views/widgets/total_price.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: const Color(0xFFD9D9D9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 50, left: 22, right: 22),
        child: Column(
          children: [
            const Text(
              'Thank you!',
              textAlign: TextAlign.center,
              style: Styles.style25,
            ),
            Text(
              'Your transaction was successful',
              textAlign: TextAlign.center,
              style: Styles.style20,
            ),
            const SizedBox(
              height: 42,
            ),
            const PaymentItemInfo(text: 'Date', value: '01/24/2023'),
            const SizedBox(
              height: 20,
            ),
            const PaymentItemInfo(text: 'Time', value: '10:15 AM'),
            const SizedBox(
              height: 20,
            ),
            const PaymentItemInfo(text: 'To', value: 'Sam Louis'),
            const Divider(
              height: 60,
              thickness: 2,
            ),
            const TotalPrice(),
            const SizedBox(
              height: 20,
            ),
            const CardInfoWidget(),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  FontAwesomeIcons.barcode,
                  size: 64,
                ),
                Container(
                  width: 113,
                  height: 58,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          width: 1.50, color: Color(0xFF34A853)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'PAID',
                      textAlign: TextAlign.center,
                      style: Styles.style24.copyWith(
                        color: const Color(0xFF34A853),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
