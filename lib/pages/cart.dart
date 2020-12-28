import 'package:flutter/material.dart';


// my import from cart product page
import 'package:application/widgets/cartProducts.dart';



class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Colors.red,
         title: Text('Cart'),
         actions: <Widget>[
           new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: () {{}}),
          
         ],
       ),
       body: new CartProduct(),
      bottomNavigationBar:    new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(child: ListTile(
              title: new Text("Total:"),
              subtitle: new Text("\$320"),
            )
            
            ),
            Expanded(child: MaterialButton(onPressed: (){},
            child:new Text("Check Out", style:TextStyle(color: Colors.white)),
            color:Colors.red
            )
            )
          ],
        ),
      ),
    );
  }
}