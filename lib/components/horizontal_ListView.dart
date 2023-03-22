import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //===============NOW ITEMS NAME DISPLAY--- height: 100.0,,,Shirts,,Dress,,Jeans
      height: 40.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
         Category(
             image_location: 'images/cats/tshirt.png',
             image_caption: 'Shirts'
         ),


          Category(
              image_location: 'images/cats/dress.png',
              image_caption: 'Dress'
          ),


          Category(
              image_location: 'images/cats/jeans.png',
              image_caption: 'Jeans'
          ),

          Category(
              image_location: 'images/cats/shoe.png',
              image_caption: 'Shoe'
          ),

          Category(
              image_location: 'images/cats/formal.png',
              image_caption: 'formal'
          ),

          Category(
              image_location: 'images/cats/informal.png',
              image_caption: 'informal'
          ),

        ],
      ),
    );
  }
}


//=========Created New STATELESS Widget============//
class Category extends StatelessWidget {

  //create new variable
  final String image_location;
  final String image_caption;
  //create constructor
  Category({
    required this.image_location,
    required this.image_caption
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
      child: InkWell(onTap: (){},
        child: Container(
          //width: 100.0,
          width: 80.0,
          child: ListTile(
            title: Image.asset(image_location,

              //width: 100.0,
              //height: 80.0,),
              width: 40.0,
              height: 40.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption, style: new TextStyle(fontSize: 12.0),),
            )
          ),
        ),
      ),
    );
  }
}

