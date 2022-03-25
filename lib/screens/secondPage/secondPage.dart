import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/secondPage/widget/about.dart';
import 'package:flutter_application_2/screens/secondPage/widget/botListView.dart';
import 'package:flutter_application_2/screens/secondPage/widget/topImg.dart';

class secondPage extends StatelessWidget {
  const secondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar:AppBar(
        leading: GestureDetector(
          onTap: (){Navigator.pop(context);},
          child: Padding(
            padding: const EdgeInsets.only(left:10),
            child: Container(
              width:15,
              height:5,
              child:Center(child: Icon(Icons.arrow_left_outlined, size:40),),
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color:Colors.grey
              ),
            ),
          ),
        ),backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children:[
              topImage(),
              SizedBox(height: 20,),
              Padding(padding: EdgeInsets.all(8), child:AboutSection()),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left:30),
                child: Container(

                  width: double.infinity,
                  height: 50,
                  child: BottomListView()),
              )
          ]
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 70,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.pink,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Text('Book Now', style: TextStyle(fontSize: 20, 
          color: Colors.white),),
        ),
      ),
    );
  }
}