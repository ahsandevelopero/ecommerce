
import 'package:flutter/material.dart';
import 'components/bottom_nav.dart';
import 'drawer.dart';
//my own import
import 'components/horizontal_ListView.dart';

//========home.dart
import 'package:ecommerce/pages/home.dart';

import 'login/login.dart';

void main(){
  runApp(
    MaterialApp(
      //home: HomePage(),
      home: Login(),
    ),
  );
}




/*=============
1-main.dart
2-home.dart
import 'package:flutter/material.dart';
import 'home.dart';
void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
    )
  );
}


2-home.dart
   //THIS IS STATEFUL WIDGET
import 'package:flutter/cupertino.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('kikjh'),
    );
  }
}


 home.dart
   //////below STATELESS WIDGET
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Text('Ahooo', style: TextStyle(color: Colors.cyan, fontSize: 80),),
    );
  }
}
 */