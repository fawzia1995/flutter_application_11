import 'package:flutter/material.dart';
import 'package:flutter_application_11/GridProductItem.dart';
import 'package:flutter_application_11/provider/product.dart';
//import 'package:flutter_application_11/product.dart';
import 'package:flutter_application_11/provider/productsprovider.dart';
import 'package:provider/provider.dart';

class MainShoppingScreen extends StatelessWidget {
  static const id = '/MainShoppingScreen';
   MainShoppingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title:Text("Phone Shop")
        ),
        body:ProductsGrid() ,
      ),
    );
  }
}

class ProductsGrid extends StatelessWidget {
  const ProductsGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
final ProductsDate=Provider.of<Products>(context);
 final availProducts=ProductsDate.availProducts; 
    return GridView.builder(
      padding: EdgeInsets.all(10),
      itemCount:availProducts.length,
     itemBuilder: (context,index){
      return ChangeNotifierProvider<Product>(
        create: (BuildContext context)=>availProducts[index],
        child: GridProductItem(
       // id: availProducts[index].id, title: availProducts[index].title, image: availProducts[index].image
       ),
      );},
     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 1/1,
     crossAxisSpacing: 10,
     mainAxisSpacing: 30),);
  }
}