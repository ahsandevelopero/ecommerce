
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavBarFb1 extends StatelessWidget {
  const BottomNavBarFb1({Key? key}) : super(key: key);

  final primaryColor = const Color(0xff4338CA);
  final secondaryColor = const Color(0xff6D28D9);
  final accentColor = const Color(0xffffffff);
  final backgroundColor = const Color(0xffffffff);
  final errorColor = const Color(0xffEF4444);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      //======background color bottom navigation Box
      color: Colors.white,
      child: SizedBox(
        height: 56,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          //============Left and Right Side Space
          padding: const EdgeInsets.only(left: 25.0, right: 25.0),
          child: Row(

            //====Space Between Icons
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              IconBottomBar2(
                  text: "Home",
                  icon: Icons.home,
                  selected: false,
                  onPressed: () {}),

              //=====icon background circle blue color====IconBottomBar2(
              IconBottomBar(
                  text: "Search",
                 // icon: Icons.search_outlined,
                  icon: Icons.search,
                  selected: false,
                  onPressed: () {}),
              IconBottomBar(
                  text: "Cart",
                  icon: Icons.local_grocery_store_outlined,
                  selected: false,
                  onPressed: () {}),
              IconBottomBar(
                  text: "Calendar",
                  icon: Icons.heart_broken,
                  //icon: Icons.date_range_outlined,
                  selected: false,
                  onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}

class IconBottomBar extends StatelessWidget {
  const IconBottomBar(
      {Key? key,
        required this.text,
        required this.icon,
        required this.selected,
        required this.onPressed})
      : super(key: key);
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;

  final primaryColor = const Color(0xff4338CA);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            //====icons size increase
            size: 20,
            color: selected ? primaryColor : Colors.black54,
          ),
        ),
      ],
    );
  }
}





class IconBottomBar2 extends StatelessWidget {
  const IconBottomBar2(
      {Key? key,
        required this.text,
        required this.icon,
        required this.selected,
        required this.onPressed})
      : super(key: key);
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;
  //final primaryColor = const Color(0xff4338CA);
  final primaryColor = const Color(0xFFF57F17);
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: primaryColor,
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: 25,
          color: Colors.white,
        ),
      ),
    );
  }
}
