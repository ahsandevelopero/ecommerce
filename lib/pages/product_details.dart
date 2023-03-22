import 'package:ecommerce/drawer.dart';
import 'package:flutter/material.dart';

import '../components/products.dart';
import 'home.dart';

class ProductDetails extends StatefulWidget {

  //Now here we create variables
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;
//create constructors
  ProductDetails({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_picture
});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          elevation: 0.1,
          backgroundColor: Colors.red,




            //IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,),onPressed: (){},),

//   ==== Top Navbar Back move To HomePage
          title: InkWell(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> new HomePage()));},
              child: Text('Our Products')
          ),

          actions: <Widget>[

            IconButton(icon: Icon(Icons.search, color: Colors.white,),onPressed: (){},),

            //IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,),onPressed: (){},),
          ],
        ),


        body: ListView(
          children: <Widget>[
            new Container(
              height: 300.0,
              //color: Colors.black,
              child: GridTile(
                //color:Colors.white70,
                child: Container(
                  color:Colors.white,
                  child: Image.asset(widget.product_detail_picture),
                ),
                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(widget.product_detail_name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),
                    title: Row(
                      children: <Widget>[
                        Expanded(
                          child: new Text("\$${widget.product_detail_old_price}",
                          style: TextStyle(color: Colors.grey, decoration: TextDecoration.lineThrough),)
                        ),

                        Expanded(
                            child: new Text("\$${widget.product_detail_new_price}",
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),)
                        ),



                      ],
                    ),
                  ),
                ),

              ),
            ),

         //       =============== the first buttons ==========    //
            Row(
              children: <Widget>[
        //       ================  the sized button =========    //
                Expanded(
                    child: MaterialButton(

                      //  ==== Alert Box Size----Choose the size
                      onPressed: (){
                        showDialog(context: context,
                            builder: (context) {
                              return new AlertDialog(
                                title: new Text("Size"),
                                content: new Text("Coose the size"),
                                actions: <Widget>[
                                  new MaterialButton(onPressed: (){
                                    Navigator.of(context).pop(context);
                                  },
                                    child: new Text("close"),)
                                ],
                              );
                            });
                      },
                      //  ==== END Alert Box Color----

                      //onPressed: (){},
                    color: Colors.white,
                    textColor: Colors.grey,
                      elevation: 0.2,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: new Text("Size"),
                        ),

                        Expanded(
                          child: new Icon(Icons.arrow_drop_down)
                        ),
                        
                      ],
                    ),)
                ),


               // ===paste
                Expanded(
                    child: MaterialButton(
                     //  ==== Alert Box Color----Choose the color
                      onPressed: (){
                        showDialog(context: context,
                            builder: (context) {
                              return new AlertDialog(
                                title: new Text("Color"),
                                content: new Text("Coose the colors"),
                                actions: <Widget>[
                                  new MaterialButton(onPressed: (){
                                    Navigator.of(context).pop(context);
                                  },
                                    child: new Text("close"),)
                                ],
                              );
                            });
                      },
                      //  ==== END Alert Box Color---


                      color: Colors.white,
                      textColor: Colors.grey,
                      elevation: 0.2,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: new Text("Color"),
                          ),

                          Expanded(
                              child: new Icon(Icons.arrow_drop_down)
                          ),

                        ],
                      ),)
                ),


                Expanded(
                    child: MaterialButton(

                      //  ==== Alert Box Quantity----Choose the Quantity
                      onPressed: (){
                        showDialog(context: context,
                            builder: (context) {
                              return new AlertDialog(
                                title: new Text("Quantity"),
                                content: new Text("Coose the quantity"),
                                actions: <Widget>[
                                  new MaterialButton(onPressed: (){
                                    Navigator.of(context).pop(context);
                                  },
                                    child: new Text("close"),)
                                ],
                              );
                            });
                      },
                      //  ==== END Alert Box ----

                      color: Colors.white,
                      textColor: Colors.grey,
                      elevation: 0.2,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: new Text("Qantity"),
                          ),

                          Expanded(
                              child: new Icon(Icons.arrow_drop_down)
                          ),

                        ],
                      ),)
                ),



              ],

            ),

            //   ======== START  SECOND BUTTON   BUYNOW  ==========   //
            Row(
              children: <Widget>[
                //   ======== SECOND BUTTON ==========   //
                Expanded(
                  child: MaterialButton(
                    //===CREATE ALERT BOX -----> SIZE
                    onPressed: (){
                      showDialog(context: context,
                          builder: (context) {
                          return new AlertDialog(
                            title: new Text("Size"),
                            content: new Text("Coose the size"),
                            actions: <Widget>[
                              new MaterialButton(onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                              child: new Text("close"),)
                            ],
                          );
                          });
                    },
                    color: Colors.red,
                    textColor: Colors.white,
                    elevation: 0.2,
                    child: new Text("Buy Now"),
                  ),
                ),

                new IconButton(icon: Icon(Icons.add_shopping_cart, color: Colors.red), onPressed: (){}),

                new IconButton(icon: Icon(Icons.favorite_border, color: Colors.red), onPressed: (){}),

              ],
            ),

          //   ================ END  BUY NOW  --- SHOPPING CART  ----  HEART   =======  //

                            // ================ Divider Red
              Divider(color: Colors.red),
           // ========  Product Details ====
            new ListTile(
              title: new Text("Product Details"),
              subtitle: new Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
            ),

            Divider(color: Colors.red),

            new Row(
              children: <Widget>[
                //Padding(padding: const EdgeInsets.fromLTRB(start, top, end, bottom))
                Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product Name", style: TextStyle(color: Colors.grey),),),
                Padding(padding: EdgeInsets.all(5.0),
                child: new Text(widget.product_detail_name),),
              ],
            ),

            new Row(
              children: <Widget>[
                //Padding(padding: const EdgeInsets.fromLTRB(start, top, end, bottom))
                Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: new Text("Product Brand", style: TextStyle(color: Colors.grey),),),

                 // ## Remeber TO Create  The Product Brands
                Padding(padding: EdgeInsets.all(5.0),
                  child: new Text("Brand X"),),
              ],
            ),

//      ========   Product Condition
            new Row(
              children: <Widget>[
                //Padding(padding: const EdgeInsets.fromLTRB(start, top, end, bottom))
                Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: new Text("Product Condition", style: TextStyle(color: Colors.grey),),
                ),

                Padding(padding: EdgeInsets.all(5.0),
                  child: new Text("New"),),

              ],
            ),

//    ======  SIMILAR  PRODUCTS SECTIONS   shows  on  BELOW OF  PARAGRAPH TEXT
          Container(
            height: 360.0,
            child: Similar_Products(),
          ),
                // ===END SIMILAR  PRODUCTS SECTIONS

          ],
        ),
      ),
    );
  }
}



// ====  Create 

class Similar_Products extends StatefulWidget {
  const Similar_Products({Key? key}) : super(key: key);

  @override
  State<Similar_Products> createState() => _Similar_ProductsState();
}

class _Similar_ProductsState extends State<Similar_Products> {



    var product_list = [
      {
        "name": "Blazer",
        "picture": "images/products/dress1.jpeg",
        "old_price": 220,
        "price": 90,
      },
      {
        "name": "Dress",
        "picture": "images/products/blazer1.jpeg",
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

            //========add padding 23
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Similar_single_prod(
                prod_name: product_list[index]['name'],
                prod_pictures: product_list[index]['picture'],
                prod_old_price: product_list[index]['old_price'],
                prod_price: product_list[index]['price'],
              ),
            );
          });

    }
}



class Similar_single_prod extends StatelessWidget {
  // const Single_prod({Key? key}) : super(key: key);

  final prod_name;
  final prod_pictures;
  final prod_old_price;
  final prod_price;
  //==Now i will create constructors
  //===these are the user defined widget
  Similar_single_prod({
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