import 'package:flutter/material.dart';
import 'package:flutter_application_11/cart_item.dart';
import 'package:provider/provider.dart';

import 'provider/cart_provider/cart_provider.dart';
import 'provider/order_provider/orders.dart';

class CartScreen extends StatelessWidget {
  static const id ='/CartScreen';
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return  Scaffold(
      appBar: AppBar(title: Text('Your Cart'),),
  body: Column(
    children: [
      Card(
    margin:const EdgeInsets.all(20),
    child: Padding(padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Total'),
        Spacer(),
        Chip(label:Text("${cart.totalTopay.toString()}\$")),
        TextButton(onPressed: (){
          Provider.of<Orders>(context,listen: false).addOrder(CartItems:cart.items.values.toList(),totalPrice:cart.totalTopay);
        }, child: Text("Order Now"))
      ],
    ),),
 )
 ,const SizedBox(height: 20,),
 Expanded(
   child: ListView.builder(itemCount:cart.items.length,
   itemBuilder: ((context, index) =>CartItemTile(id: cart.items.values.toList()[index].id, 
   qty: cart.items.values.toList()[index].qty
   , price:cart.items.values.toList()[index].price
    , title:cart.items.values.toList()[index].title,
    productId: cart.items.keys.toList()[index], ) ),
   ),
 )
 ] ),  );
  }
}