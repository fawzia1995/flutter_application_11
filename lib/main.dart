import 'package:flutter/material.dart';
import 'package:flutter_application_11/productdetail_screen%20.dart';
import 'package:flutter_application_11/provider/productsprovider.dart';
import 'package:provider/provider.dart';
import 'MainShoopingScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      },
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
      create:(BuildContext context) =>Products() ,
      child: MainShoppingScreen()); }
}

