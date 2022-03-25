import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/home/widget/appbar.dart';
import 'package:flutter_application_2/screens/home/widget/myListView.dart';
import 'package:flutter_application_2/screens/home/widget/searchBar.dart';
import 'package:flutter_application_2/screens/home/widget/staggeredGrid.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: 
      Padding(
        padding: const EdgeInsets.symmetric(horizontal:15, vertical:0),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children:[
          
          SizedBox(height:20),
          SearchBar(),
          SizedBox(height:30),
          Text('Explore the world', style:TextStyle(
            fontSize: 35
          )),
          Text('with us', style:TextStyle(
            fontSize: 35
          )),
          SizedBox(height:30),
          Container(
            alignment: Alignment.center,
            width:double.infinity,
            height:50,
            child:MyListView()),
            Container(
              height:500,
              width:double.infinity,
              child: MyStaggeredGrid())


        ]),
      ),),
    );
  }
}