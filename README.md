# Payment App

## 1. Introduction
This documentation outlines the Flutter Payment App, a mobile application designed to facilitate payments using Stripe and PayPal. The app employs the MVVM architecture and utilizes various packages and tools like Bloc (Cubit), dartz, dio, flutter_stripe, and flutter_paypal_payment for efficient state management and functionality.

## 2. Features
- Payment processing via Stripe and PayPal.
- Secure and seamless transaction flow.
- User-friendly interface.
- State management using Bloc (Cubit).
- Error handling and data validation.

## 3. Project Structure
The project follows the MVVM (Model-View-ViewModel) architecture, which separates the business logic, presentation, and data layers for better maintainability and scalability.

## 4. Dependencies and Tools
- Bloc (Cubit): State management library for managing UI and data synchronization.
- dartz: Functional programming library for error handling and data modeling.
- dio: HTTP client for making API calls.
- flutter_stripe: Flutter plugin for Stripe integration.
- flutter_paypal_payment: Flutter plugin for PayPal integration.

## 5. Main Screens
The Flutter Payment Gateway App contains the following main screens:

### Product and Prices Screen
- Displays a list of products with their corresponding prices.

### Stripe Payment Sheet
- Provides a payment sheet for Stripe integration.
- Enables users to enter payment details and complete transactions securely.

### PayPal WebView Payment Sheet
- Integrates PayPal payments using a WebView interface.
- Facilitates secure payment processing via PayPal.

## 6. Usage
1. Run the app on an emulator or physical device.
2. Navigate through the app to explore payment options and functionalities.
3. Follow the on-screen instructions to complete payments using Stripe or PayPal.
