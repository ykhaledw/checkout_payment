import 'package:checkout_payment_app/features/payment/data/models/amount_model/amount_model.dart';
import 'package:checkout_payment_app/features/payment/data/models/amount_model/details.dart';
import 'package:checkout_payment_app/features/payment/data/models/item_list_model/item.dart';
import 'package:checkout_payment_app/features/payment/data/models/item_list_model/item_list_model.dart';

({AmountModel amount, ItemListModel itemList}) getTransactionData() {
    var amount = AmountModel(
      currency: 'USD',
      total: "100",
      details: Details(
        shipping: "0",
        shippingDiscount: 0,
        subtotal: '100',
      ),
    );

    List<OrderItemModel> orders = [
      OrderItemModel(
        currency: 'USD',
        name: 'Apple',
        price: "10",
        quantity: 4,
      ),
      OrderItemModel(
        currency: 'USD',
        name: 'Pinapple',
        price: "12",
        quantity: 5,
      ),
    ];

    var itemList = ItemListModel(orders: orders);

    return (amount: amount, itemList: itemList);
  }