import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: < Widget > [
         Category(
           imageLocation: 'assets/images/img-1.jpg',
           imageCaption:'T-Shirt',
         ),
         Category(
           imageLocation: 'assets/images/img_3.jpg',
           imageCaption:'T-Shirt',
         ),
         Category(
           imageLocation: 'assets/images/img_2.jpg',
           imageCaption:'T-Shirt',
         ),
         Category(
           imageLocation: 'assets/images/img_2.jpg',
           imageCaption:'T-Shirt',
         ),
        ],
      ),
    );

  }
}

         
class Category extends StatelessWidget {

  final String imageLocation;
  final String imageCaption;
  Category({
    this.imageLocation,
    this.imageCaption,
  });
  @override

  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.only(
        top: 2.0,
        right: 2.0,
        // left: 5.0,
        bottom: 2.0
      ),
      child: InkWell(
        onTap:(null),
        child: Container(
          width: 100.0,
          child: ListTile(
          title: Image.asset(imageLocation,
          width: 100.0,
          height: 80.0,
          ),
          subtitle:Container(
            alignment: Alignment.topCenter,
            child: Text(imageCaption,style: TextStyle( fontSize:12.0),)  
               ,)
         
        ),          
        )
      ),
    );
  }
}