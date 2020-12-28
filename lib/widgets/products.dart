
import 'package:application/pages/productDetails.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  Products({Key key}) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productList =[
    {
      "name":"Blazer" ,
      "picture":"assets/images/man.jpg" ,
      "old_price": 100,
      "price": 50,
    },
    {
      "name":"Saree" ,
      "picture":"assets/images/man.jpg" ,
      "old_price": 100,
      "price": 50,
    },
    {
      "name":"Lungee" ,
      "picture":"assets/images/man.jpg" ,
      "old_price": 100,
      "price": 50,
    },
    {
      "name":"Pant" ,
      "picture":"assets/images/img_3.jpg" ,
      "old_price": 100,
      "price": 50,
    },
 

  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
       itemBuilder:  (BuildContext context, int index){
         return  SingleProduct(
           productName:productList[index]['name'],
           productImage: productList[index]['picture'],
           oldPrice: productList[index]['old_price'],
           price: productList[index]['price'],
           );
       } 
       );
  }
}
class SingleProduct extends StatelessWidget {
 final productName;
 final productImage;
 final oldPrice;
 final price;
 SingleProduct(
   {
     this.productName,
     this.productImage,
     this.oldPrice,
     this.price
   }
 );
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(tag: productName, 
      child:Material(
        child: InkWell(
          onTap: ()=> Navigator.of(context).push(MaterialPageRoute(
            builder: (context)=> new ProductDetails(
              productDetailsName:productName,
              productDetailsImage:productImage,
              productDetailsOldPrice:oldPrice,
              productDetailsPrice:price
            ))),
          child: GridTile(
            footer: Container(
              height: 75.0,
              color: Colors.white70,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: new Text(productName,style: TextStyle(color:Colors.grey,fontSize: 16.0,fontWeight: FontWeight.bold,)),
                  
                  ),
                        
                  new Text("\$$price",style: TextStyle(color: Colors.red,fontSize: 16.0,fontWeight: FontWeight.bold),)
                  
                ],
              ),




              // child: ListTile(
              //   leading: Text(productName,style: TextStyle(
              //     fontWeight: FontWeight.bold
              //   ),),
              //   title: Text("\$$price", style: TextStyle(
              //     color: Colors.red,
              //     fontSize: 14.0,
              //     fontWeight: FontWeight.bold
              //     ),),

              //   subtitle: Text("\$$oldPrice",style: TextStyle(
              //     decoration: TextDecoration.lineThrough,
              //     fontSize: 12.0
              //   ),),
              // ),
            ),
            child: Image.asset(productImage,
            fit: BoxFit.cover,
            ),

            ),
        ),
      ) 
      ),
    );
  }
}