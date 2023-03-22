import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home:  MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image Carousel")),
      body: SingleChildScrollView(
        child: Container(
          height: 300,
          child: Carousel(
            boxFit: BoxFit.fill,
            images: [
              AssetImage('images/c1.jpg'),
              AssetImage('images/c1.jpg'),
              AssetImage('images/c1.jpg'),
              AssetImage('images/c1.jpg'),
              AssetImage('images/c1.jpg'),
            ],
            autoplay: false,
            //dotColor: Colors.yellow,
            //dotBgColor: Colors.black,
            dotBgColor: Colors.black,
            dotSize: 5.0,
            dotSpacing: 20.0,
          ),
        ),
      ),
    );
  }
}


