import 'package:flutter/material.dart';
import '../Model/item_model.dart';

class OrderViewModel extends ChangeNotifier{
  List<OrderItem> items = [
    OrderItem(name: 'سماعة بلوتوث', size: 'XL', price: 60000, quantity: 5),
    OrderItem(name: 'سماعة بلوتوث', size: 'XL', price: 60000, quantity: 3),
  ];
  updateQuantity(OrderItem item, int quantity){
    if(quantity >= 0){
      item.quantity = quantity;
      notifyListeners();
    }
  }

  double get totalPrice => items.fold(0, (total, item) => total + (item.price * item.quantity));
  int get deliveryFee => 60;
  int get discount => 30;
  double get finalTotalPrice => totalPrice + deliveryFee - discount;
  PaymentMethod selectedPaymentMethod = PaymentMethod.Cash;

  PaymentMethod get selectedPayment => selectedPaymentMethod;

  void selectPaymentMethod(PaymentMethod method){
    selectedPaymentMethod = method;
    notifyListeners();
  }
}
enum PaymentMethod {Cash, Visa, Installment}