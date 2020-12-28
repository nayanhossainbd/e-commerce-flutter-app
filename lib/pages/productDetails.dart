

import 'package:application/main.dart';
import 'package:flutter/material.dart';
class ProductDetails extends StatefulWidget {
  final productDetailsName;
  final productDetailsImage;
  final productDetailsOldPrice;
  final productDetailsPrice;
  ProductDetails({
    this.productDetailsName,
    this.productDetailsImage,
    this.productDetailsOldPrice,
    this.productDetailsPrice
  });
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State < ProductDetails > {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red,
        title:InkWell(
          onTap: () {Navigator.push(context, MaterialPageRoute(builder:(context)=>new HomePage()));},
          child:  Text('ShopApp'),
        ),
        
        actions: < Widget > [
          new IconButton(icon: Icon(Icons.search, color: Colors.white, ), onPressed: () {
            {}
          }),
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white, ), onPressed: () {
            {}
          })
        ],
      ),
      body: ListView(
        children: < Widget > [
          Container(
            height: 300.0,
            color: Colors.black,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image(image: AssetImage(widget.productDetailsImage, ),
                  fit: BoxFit.cover,
                ),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(widget.productDetailsName,
                    style: TextStyle(fontSize: 16.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  title: Row(
                    children: < Widget > [
                      Expanded(child: Text("\$${widget.productDetailsOldPrice}")),
                      Expanded(child: Text("\$${widget.productDetailsPrice}")),
                    ],
                  ),
                ),
              ),


            )



          ),
          Row(
            children: < Widget > [
              Expanded(
                child: MaterialButton(onPressed: (){
                  showDialog(context: context,
                  builder:(context){
                      return new AlertDialog(
                        title: Text('Size Of Item'),
                        content: Text('Choose the size '),
                        actions: <Widget>[
                          MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context);
                          },
                         child: Text('Close',style: TextStyle(color:Colors.red),),
                          )
                        ],
                      );
                  });
                },
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: < Widget > [
                      Expanded(
                        child: Text("Size")
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down)
                      )
                    ],
                  ),


                ),
              ), 

              Expanded(
                child: MaterialButton(
                  onPressed: (){
                  showDialog(context: context,
                  builder:(context){
                      return new AlertDialog(
                        title: Text('Color Of Item'),
                        content: Text('Select Color '),
                        actions: <Widget>[
                          MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context);
                          },
                         child: Text('Close',style: TextStyle(color:Colors.red),),
                          )
                        ],
                      );
                  });
                },
                  
                
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: < Widget > [
                      Expanded(
                        child: Text("Color")
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down)
                      )
                    ],
                  ),

                ),
              ),
              //Expanded
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                  showDialog(context: context,
                  builder:(context){
                      return new AlertDialog(
                        title: Text('Quantity Of Item'),
                        content: Text('Choose the size '),
                        actions: <Widget>[
                          MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context);
                          },
                         child: Text('Close',style: TextStyle(color:Colors.red),),
                          )
                        ],
                      );
                  });
                },            
                textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: < Widget > [
                      Expanded(
                        child: Text("Qnty")
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down)
                      )
                    ],
                  ),

                ),
              )



            ],
          ),
          Row(
             
             children: < Widget > [
              Expanded(
                child: MaterialButton(
                  onPressed: (){},
                  textColor: Colors.white,
                  color: Colors.red,
                  elevation: 0.2,
                  child: new Text('Buy Now')
               
                ),
              ),
              IconButton(icon: Icon(Icons.add_shopping_cart,color: Colors.red,), onPressed:(){}),
              IconButton(icon: Icon(Icons.favorite_border,color: Colors.redAccent,), onPressed:(){})
              
            ],
            
          ),
Divider(color: Colors.redAccent,),
            new ListTile(
              title: new Text('Product Details'),
              subtitle: new Text('Lorem ipsu'),
            ),
            Divider(),
            new Row(
              children: <Widget>[
                Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text('Product Name'),
                ),
                Padding(padding: EdgeInsets.all(5.0),
                child: new Text(widget.productDetailsName),
                )
              ],
            )  ,
            // Product Brand
                        new Row(
              children: <Widget>[
                Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text('Product Brand'),
                ),
                 Padding(padding: EdgeInsets.all(5.0),
                child: new Text('Brand X'),
                )
              ],
            ) ,
                        new Row(
              children: <Widget>[
                Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text('Product Conditions'),
                ),
                 Padding(padding: EdgeInsets.all(5.0),
                child: new Text('Normal'),
                )
              ],
            ),
            Divider(),
            Padding(padding: const EdgeInsets.all(8.0),
            child: new Text("Similar Products"),
            ),
            
            Container(
              height: 360.0,
              child: SimilarProduct(),
            ),
        ],
      ),
    );

  }
}
class SimilarProduct extends StatefulWidget {
  SimilarProduct({Key key}) : super(key: key);

  @override
  _SimilarProductState createState() => _SimilarProductState();
}

class _SimilarProductState extends State<SimilarProduct> {
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
         return  SimilarSingleProduct(
           productName:productList[index]['name'],
           productImage: productList[index]['picture'],
           oldPrice: productList[index]['old_price'],
           price: productList[index]['price'],
           );
       } 
       );
  }
}
class SimilarSingleProduct extends StatelessWidget {
 final productName;
 final productImage;
 final oldPrice;
 final price;
 SimilarSingleProduct(
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