import 'package:flutter/material.dart';
import 'package:flutter_application_11/CartScreen.dart';
import 'package:flutter_application_11/order_screen.dart';
import 'package:flutter_application_11/productdetail_screen%20.dart';
import 'package:flutter_application_11/provider/order_provider/orders.dart';
import 'package:flutter_application_11/provider/product_provider/productsprovider.dart';
import 'package:provider/provider.dart';
import 'MainShoopingScreen.dart';
import 'provider/cart_provider/cart_provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return  MultiProvider(
      providers: [
       ChangeNotifierProvider(
        create:(BuildContext context) =>Products()) ,
        ChangeNotifierProvider(create: (BuildContext context)=>Cart(),),
        ChangeNotifierProvider(create:(BuildContext context)=>Orders())],child:
        MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
      routes: {
        
        MainShoppingScreen.id: (c)=>MainShoppingScreen(),
        ProductDetailsScreen.id:(c)=>ProductDetailsScreen(),
      CartScreen.id :(c)=>CartScreen(),
      OrdersScreen.id:(c)=>OrdersScreen()
      },
    ));
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    
      return MainShoppingScreen();
     }
}

