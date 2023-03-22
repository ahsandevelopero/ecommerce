import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

import '../components/horizontal_ListView.dart';
import '../components/products.dart';
import 'cart.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {



    //==variable object type widget===//
    Widget image_carousel = new Container(
      height: 200,
      child:  Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/w4.jpeg'),
          AssetImage('images/m2.jpg'),
        ],
        //autoplay: false,
        autoplay: true,  //its mean auto move images
        animationCurve: Curves.fastOutSlowIn,
        //animationDuration: Duration(milliseconds: 1000),
        // dotSize: 4.0,
        //dotColor: Colors.redAccent,
        //dotColor: Colors.transparent,
        dotBgColor: Colors.transparent,
        indicatorBgPadding: 6.0,
      ),
    );


    return Scaffold(
      appBar:AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text('Our Products'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search, color: Colors.white,),onPressed: (){},),

          //========cart.dart-----push
          IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,),onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
          },),
        ],
      ),

      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            //header
            UserAccountsDrawerHeader(accountName: Text('Ahsan'), accountEmail: Text('tattapani77@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white,),
                ),
              ),

              //=====Drawer header color=====//
              decoration: BoxDecoration(
                  color: Colors.purple
              ),

            ),

            //====Drawer body
            InkWell(
              onTap: (){},
              child: ListTile(          //ListTile widget wrap into Inkwell
                title: Text('Home Page'),
                leading: Icon(Icons.home, color: Colors.red,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(          //ListTile widget wrap into Inkwell
                title: Text('My Account'),
                leading: Icon(Icons.person, color: Colors.red,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(          //ListTile widget wrap into Inkwell
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket, color: Colors.red,),
              ),
            ),

            InkWell(
              //  ===========  Cart.dart
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
              },
              child: ListTile(          //ListTile widget wrap into Inkwell
                title: Text('Shopping Cart'),
                leading: Icon(Icons.shopping_cart, color: Colors.red,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(          //ListTile widget wrap into Inkwell
                title: Text('Favourites'),
                leading: Icon(Icons.favorite, color: Colors.red,),
              ),
            ),

            Divider(),

            InkWell(
              onTap: (){},
              child: ListTile(          //ListTile widget wrap into Inkwell
                title: Text('Settings'),
                leading: Icon(Icons.settings, color: Colors.green,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(          //ListTile widget wrap into Inkwell
                title: Text('About'),
                leading: Icon(Icons.help, color: Colors.blue,),
              ),
            ),

          ],
        ),
      ),


      //================BODY=========//
      body: new Column(                  //==body: ListView(----Convert into Column
        children: <Widget>[
          //image carousel begins here
          // image_carousel,

          //===padding widget==//
          Padding(padding: EdgeInsets.all(4.0),
            child: Container(
                alignment: Alignment.centerLeft,
                child: Text('Categories')),),

          //Horizontal list view begins here
          HorizontalList(),


          Padding(padding: EdgeInsets.all(8.0),
            child: Container(
                alignment: Alignment.centerLeft,
                child: Text('Recent Products')),),

          //======Gried View
          Flexible(child: Products()),


        ],
      ),



    );
  }
}

