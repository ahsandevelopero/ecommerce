
import 'package:flutter/material.dart';

import '../pages/product_details.dart';
class Products extends StatefulWidget {
  //const Products({Key? key}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {

  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 220,
      "price": 90,
    },

    {
      "name": "Dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 120,
      "price": 190,
    },

    {
      "name": "Hills",
      "picture": "images/products/hills1.jpeg",
      "old_price": 220,
      "price": 90,
    },

    {
      "name": "Shoes",
      "picture": "images/products/shoe1.jpg",
      "old_price": 120,
      "price": 190,
    },


    {
      "name": "Dress",
      "picture": "images/products/dress2.jpeg",
      "old_price": 220,
      "price": 90,
    },

    {
      "name": "Blazer",
      "picture": "images/products/blazer2.jpeg",
      "old_price": 120,
      "price": 190,
    },



  ];



  @override
  Widget build(BuildContext context) {
    //==number of products count in a list

    return GridView.builder(
        itemCount: product_list.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:
      2),
      itemBuilder: (BuildContext context, int index){
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_pictures: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
      });


  }
}


//===Now i will create Stateless 
//Single_prod
class Single_prod extends StatelessWidget {
 // const Single_prod({Key? key}) : super(key: key);

  final prod_name;
  final prod_pictures;
  final prod_old_price;
  final prod_price;
  //==Now i will create constructors
  //===these are the user defined widget
  Single_prod({
    this.prod_name,
    this.prod_pictures,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {

    return Card(
      child: Hero(tag: prod_name, child: Material(child: InkWell(

        //==push to next product_details.dart screen
        onTap:() => Navigator.of(context).push(new MaterialPageRoute(
          //HERE WE ARE PASSING THE VALUES OF THE PRODUCT TO THE PRODUCT DETAILS PAGE-----product_details.page
            builder: (context) => new ProductDetails(
              product_detail_name: prod_name,
              product_detail_new_price: prod_price,
              product_detail_old_price: prod_old_price,
              product_detail_picture: prod_pictures,
            ))),


        child: GridTile(
          footer: Container(
            color: Colors.white70,

           child: new Row(
             children: <Widget>[
               Expanded(
                 //  ==== Product Name
                   child: Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
               ),

               //  ==== Product Price
               new Text("\$${prod_price}", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),)
             ],
           ),


            /*child: ListTile(
              leading: Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold),),
               //
              title: Text("\$$prod_price", style: TextStyle(color: Colors.red, fontWeight: FontWeight.w800),),

              subtitle: Text(""
                  "\$$prod_old_price", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800,
              decoration: TextDecoration.lineThrough),),
            ),*/

          ),
          child: Image.asset(prod_pictures,
          fit: BoxFit.cover,)),
      ),),)
    );

  }
}




/*
drawer.dart
 //======Gried View
         Container(
           height: 200,
           child: Products(),
         ),

        ],
      ),
*/


