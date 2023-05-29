import 'package:flutter/material.dart';
import 'package:flutter_application_11/provider/product_provider/productsprovider.dart';
import 'package:provider/provider.dart';

class ProductDetailsScreen extends StatelessWidget {
    static const id = '/ProductDetailsScreen';
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
   
    var id =ModalRoute.of(context)?.settings.arguments as String;
    final ourProduct=Provider.of<Products>(context,listen:false).findById(id);
   // var id=ModalRoute.of(context)?.setting.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: Column(children:[
        Container(height: 250
        ,width: double.infinity,
        child: Image.asset(ourProduct.image,
        fit: BoxFit.cover,),),
        SizedBox(height: 20,),
        Text("\$ ${ourProduct.price
        }",style:TextStyle(color:Colors.grey,fontSize:20)),
        SizedBox(height: 20,),
        Text(" ${ourProduct.description}")
      ]),
    );
  }
}