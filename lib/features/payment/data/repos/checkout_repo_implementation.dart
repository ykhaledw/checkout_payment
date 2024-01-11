import 'package:checkout_payment_app/core/errors/failures.dart';
import 'package:checkout_payment_app/core/utils/stripe_service.dart';
import 'package:checkout_payment_app/features/payment/data/models/payment_intent_input_model.dart';
import 'package:checkout_payment_app/features/payment/data/repos/checkout_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class CheckoutRepoImplementation extends CheckoutRepo {
  StripeService stripeService = StripeService();
  @override
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    try {
      await stripeService.makePayment(
          paymentIntentInputModel: paymentIntentInputModel);

      return right(null);
    } on StripeError catch (e) {
      return left(ServerFailure(errorMessage: e.message.toString()));
    } catch (e) {
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
