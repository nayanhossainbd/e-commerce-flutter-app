

import 'package:flutter/material.dart';

class CartProduct extends StatefulWidget {
  CartProduct({Key key}) : super(key: key);

  @override
  _CartProductState createState() => _CartProductState();
}

class _CartProductState extends State<CartProduct> {
  var cartProduct=[
      {
      "name":"Blazer" ,
      "picture":"assets/images/man.jpg" ,
      "price": 50,
      "color": "Red",
      "size":"M",
      "quantity":2
    },
    {
      "name":"Saree" ,
      "picture":"assets/images/man.jpg" ,
      "price": 50,
      "color": "Red",
      "size":"M",
      "quantity":2

    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
       child: new ListView.builder(
         itemCount: cartProduct.length,
         itemBuilder: (context, index){
           return new SingleCartProduct(
             cartProductName: cartProduct[index]['name'],
             cartProductImage: cartProduct[index]['picture'],
             cartProductPrice: cartProduct[index]['price'],
             cartProductSize: cartProduct[index]['size'],
             cartProductColor: cartProduct[index]['color'],
             cartProductQnty: cartProduct[index]['quantity'],
           );
         } ),
    );
  }
}
class SingleCartProduct extends StatelessWidget {
  final cartProductName;
  final cartProductImage;
  final cartProductPrice;
  final cartProductColor;
  final cartProductSize;
  final cartProductQnty;
  SingleCartProduct({
    this.cartProductName,
    this.cartProductImage,
    this.cartProductPrice,
    this.cartProductColor,
    this.cartProductSize,
    this.cartProductQnty
  });
  @override
  Widget build(BuildContext context) {
    return Card(
    
      child: ListTile(
        
        leading: new Image.asset(cartProductImage,width: 100.0,height: 150.0),
         title: new Text(cartProductName),
          
         subtitle: new Column(
           children: <Widget>[
             new Row(
               children: <Widget>[
                //  product size section
                Padding(padding: const EdgeInsets.all(0.0),
                child: new Text('Size:'),),
                Padding(padding: const EdgeInsets.all(4.0),
                child: new Text(cartProductSize,style: TextStyle(color:Colors.red)),),
                // Color section
                new Padding(padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                child: new Text('Color:'),),
                Padding(padding: const EdgeInsets.all(4.0),
                child: new Text(cartProductColor,style: TextStyle(color:Colors.red)),)

               ],
             ),
            //  Price section
             new Container(
               
               alignment: Alignment.topLeft,
               child: new Text("\$$cartProductPrice",style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold,color: Colors.red),),
             )
           ],
         ),
        trailing:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
           IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){}),
          
           Text('trailing ')

          ],
        )
      ),
      
    );
  }
  void addQuantity(){

  }
}