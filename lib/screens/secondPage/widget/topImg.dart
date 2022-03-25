import 'package:flutter/material.dart';

class topImage extends StatelessWidget {
  const topImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children:[
        Stack(children: [
          Container(
            decoration: BoxDecoration(color:Colors.pink.withOpacity(0.2),
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),
             bottomLeft: Radius.circular(20))),
            height: 500,
            alignment: Alignment.topCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 400,
              decoration: BoxDecoration(image:DecorationImage(image: AssetImage('image3.png'), 
              fit: BoxFit.cover))),
          ),
            Positioned(
              bottom:85,
              right: 20,
              child: Container(
                height:30,
                width:30,
                alignment: Alignment.center,
                decoration: BoxDecoration(shape: BoxShape.circle, color:Colors.white),
                child: Icon(Icons.favorite, color: Colors.pink, size:15),
              ),
            ),
            Positioned(
              bottom: 20,
              left:10,
              child: Container(
                width:MediaQuery.of(context).size.width*0.9,
                height: 60,
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children:[
                Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                  Text('Oki Island', style: TextStyle(fontSize: 30, fontWeight:FontWeight.bold),),
                  Text('San Diego, USA')
                ],),
                Row(
                  children: [
                    Icon(Icons.star, color:Colors.pink),
                    Text('4.5')
                  ]
                )
                          ]),
              ))
        ],)
      ],
    ));
  }
}