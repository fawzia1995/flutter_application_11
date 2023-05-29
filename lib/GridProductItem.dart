import 'package:flutter/material.dart';
import 'package:flutter_application_11/productdetail_screen%20.dart';
import 'package:flutter_application_11/provider/cart_provider/cart_provider.dart';
import 'package:flutter_application_11/provider/product_provider/product.dart';
import 'package:provider/provider.dart';

class GridProductItem extends StatelessWidget {
  const GridProductItem({Key ? key,
  //required this.id,required this.title,required this.image
  }):super(key:key);
//final String id,title,image;
  @override
  Widget build(BuildContext context) {
    final product=Provider.of<Product>(context,listen: false);
    final cart =Provider.of<Cart>(context);
    return Consumer <Product>(
      builder: (_,product,child){
      return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: GridTile
      (child: GestureDetector(
        onTap: (){
          Navigator.of(context).pushNamed(ProductDetailsScreen.id,arguments:product. id);
        },
        child: Image.asset(product.image)),
      footer: GridTileBar(
        title:Text(product.title,textAlign:TextAlign.center,style: TextStyle(fontSize: 16),),
        backgroundColor: Colors.black54,
        leading:IconButton(icon:product.isFavorite?Icon(Icons.favorite):Icon(Icons.favorite_border),
        onPressed:(){
          product.toggleIsFav();
         }),
        trailing: IconButton(icon: Icon(Icons.shopping_cart),

        onPressed: (){cart.addItem(productId:product.id,title: product.title,price:product.price); })
        
        
      ),),
   );
   },
   );
  }
}