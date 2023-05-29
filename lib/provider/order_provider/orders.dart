import 'package:flutter/material.dart';
import 'package:flutter_application_11/provider/cart_provider/cart_provider.dart';
class OrderItem{
  OrderItem({required this .id,
  required this.totalPrice,
  required this.orderTime,
  required this.CartItems
});
final String id;
final double totalPrice;
final DateTime orderTime;
final List<CartItem> CartItems;
}
  
class Orders with ChangeNotifier{
   List<OrderItem> _myOrders=[];
  List<OrderItem>get myOrders{return [..._myOrders];}
  void addOrder({
    required List<CartItem> CartItems,
    required  double totalPrice
  }){
    _myOrders.add(OrderItem(id: DateTime.now().toString(), totalPrice: totalPrice, orderTime: DateTime.now(), CartItems: CartItems)
    );
    notifyListeners();
  }

}