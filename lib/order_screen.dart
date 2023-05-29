import 'package:flutter/material.dart';
import 'package:flutter_application_11/provider/order_provider/orders.dart';
import 'package:provider/provider.dart';

import 'orders_item.dart';

class OrdersScreen extends StatelessWidget {
  static const id ='/OrdersScreen';
  const OrdersScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final orders =Provider.of<Orders>(context);
    return Scaffold(appBar: AppBar(title: Text('Your Orders')),
    body:
    ListView.builder(
      itemCount: orders.myOrders.length,
      itemBuilder: ((context, index) => OrderItemTile(order:orders.myOrders[index]))),);
  }
}