




import 'package:flutter/material.dart';
// import 'package:application/home.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:application/pages/cart.dart';
// my apps import 
import 'package:application/widgets/horizontal_list.dart';
import 'package:application/widgets/products.dart';
void main(){
  runApp(
    MaterialApp(
    debugShowCheckedModeBanner: false,
      home:HomePage(),
          )
        );      

}
 class HomePage extends StatefulWidget {
   @override
   _HomePageState createState() => _HomePageState();
  }
 class _HomePageState extends State<HomePage> {
   @override
   Widget build(BuildContext context) {
       Widget imageCarousel = new Container(
         height:200.0,
         child: new Carousel(
           boxFit: BoxFit.cover,
           images: [
             AssetImage('assets/images/img-1.jpg'),
             AssetImage('assets/images/img_2.jpg'),
             AssetImage('assets/images/img_3.jpg'),
           ],
           autoplay: true,
           animationCurve: Curves.fastOutSlowIn,
           animationDuration: Duration(microseconds: 1000),
           dotSize: 4.0,
          //  autoplayDuration:Duration(microseconds:2000),
         
           dotColor: Colors.red,
           dotBgColor:Colors.transparent,
           indicatorBgPadding: 2.0,
         ),
       );
     return Scaffold(
       appBar: new AppBar(
         backgroundColor: Colors.red,
         title: Text('ShopApp'),
         actions: <Widget>[
           new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: () {{}}),
           new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));}),
         ],
       ),
       drawer: new Drawer(
         child: new ListView(
           children: <Widget>[
             //header
             new UserAccountsDrawerHeader(
                 accountName: Text('Nayan Hossain'),
                 accountEmail: Text('nayahossainbd.786@gmail.com'),
             currentAccountPicture: GestureDetector(
               child: new CircleAvatar(
                 backgroundImage: AssetImage('assets/images/man.jpg'),
                //  backgroundColor: Colors.grey,
                //  child: new Image(image: AssetImage('assets/images/man.jpg')),
                 // child: Icon(Icons.person,color: Colors.white,),
               )
             ),
               decoration: new BoxDecoration(
                 color: Colors.red,
               ),
             ),
             // body
           InkWell(
             onTap:(){},
               child: ListTile(
                 title: Text('Dashboard'),
                 leading: Icon(Icons.dashboard),
               ),

           ),
             InkWell(
               onTap:(){},
               child: ListTile(
                 title: Text('About'),
                 leading: Icon(Icons.assignment),
               ),

             ),
             InkWell(
               onTap:(){},
               child: ListTile(
                 title: Text('My Account'),
                 leading: Icon(Icons.person),
               ),

             ),
              InkWell(
               onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));},
               child: ListTile(
                 title: Text('Cart'),
                 leading: Icon(Icons.add_shopping_cart),
               ),

             ),
             InkWell(
               onTap:(){},
               child: ListTile(
                 title: Text('Favourites'),
                 leading: Icon(Icons.favorite),
               ),

             ),
             Divider(),
             InkWell(
               onTap:(){},
               child: ListTile(

                 title: Text('Contact'),
                 leading: Icon(Icons.bookmark),
               ),

             ),
             InkWell(
               onTap:(){},
               child: ListTile(

                 title: Text('Settings'),
                 leading: Icon(Icons.settings),
               ),

             ),
           ],
         )
       ),
       body: new ListView(
         children: <Widget>[
           imageCarousel,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text('Categories',style: TextStyle(fontSize:16.0,fontWeight: FontWeight.w600),),
          ),
          // Padding
           HorizontalList(),
            Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text('Recent Products',style: TextStyle(fontSize:16.0,fontWeight: FontWeight.w600),),
          ),
          Container(
            height: 320.0,
            child:  Products(), 
          )
          

         ],
       ),
     );
   }
 }