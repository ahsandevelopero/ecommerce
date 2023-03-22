import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  const Cart_products({Key? key}) : super(key: key);

  @override
  State<Cart_products> createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {


  var Products_on_the_cart = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "price": 90,
      "size": "M",
      "color": "Black",
      "quantity": 1,
    },
    {
      "name": "Shoes",
      "picture": "images/products/hills1.jpeg",
      "price": 50,
      "size": "7",
      "color": "Red",
      "quantity": 1,
    },

    {
      "name": "Shoes",
      "picture": "images/products/hills1.jpeg",
      "price": 50,
      "size": "7",
      "color": "Red",
      "quantity": 1,
    },



  ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: Products_on_the_cart.length,
        itemBuilder: (context, index){
          return Single_cart_product(
            cart_prod_name: Products_on_the_cart[index]["name"],
            cart_prod_color: Products_on_the_cart[index]["color"],
            cart_prod_qty: Products_on_the_cart[index]["quantity"],
            cart_prod_size: Products_on_the_cart[index]["size"],
            cart_prod_price: Products_on_the_cart[index]["price"],
            cart_prod_pictures: Products_on_the_cart[index]["picture"],
          );
        }
    );
  }
}



//====create single cart product
class Single_cart_product extends StatelessWidget {

  final cart_prod_name;
  final cart_prod_pictures;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;

  //now we build constructors here
  Single_cart_product({
    this.cart_prod_name,
    this.cart_prod_pictures,
    this.cart_prod_price,
    this.cart_prod_size,
    this.cart_prod_color,
    this.cart_prod_qty
});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(

        //=================Leading Section
        // ==================  =============  Shopping cart images in a list
        leading: new Image.asset(cart_prod_pictures, width: 80.0, height: 80.0),

        // ==================Title Section ==============================
        title: new Text(cart_prod_name),

        //  ================ Sub Title Section ======================
        subtitle: new Column(
          children: <Widget>[
//  ROW   INSIDE  THE  COLUMN
            new Row(
                children: <Widget>[
//  This section is for the size of product
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: new Text("Size:"),
                     ),

                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: new Text(cart_prod_size, style: TextStyle(color: Colors.red),),
                  ),


//   ================  This section for  the product color
                  new Padding(padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                      child: new Text("Color:"),),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: new Text(cart_prod_color, style: TextStyle(color: Colors.red),),
                  ),
                ],
            ),


            //   =================  This section is for the Product price ========

            new Container(
              alignment: Alignment.topLeft,
              child: new Text("\$${cart_prod_price}",
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              )
              ),

            )
            //new Text("\$${cart_prod_price}")

          ],
        ),

        // ========================================//FIX ERROR  BOTTOM OVERFLOWED BY 8.0 PX
        trailing: new Column(
         children: <Widget>[
           //FIX ERROR  BOTTOM OVERFLOWED BY 8.0 PX
           //new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: (){}),
           new Text("$cart_prod_qty"),
           new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){})
         ],
       ),

      ),
    );
  }


}
