import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:BorderRadius.circular(15),
        boxShadow: [BoxShadow(blurRadius: 3, spreadRadius: 2, color: Colors.grey)],
      ),child: TextField(
        cursorColor: Colors.pink,
        decoration: InputDecoration(prefixIcon: Icon(Icons.search, size:25,
        color:Colors.pink),
        border: InputBorder.none,
        hintText: 'Search here....',



        ),
      ),

    );
  }
}