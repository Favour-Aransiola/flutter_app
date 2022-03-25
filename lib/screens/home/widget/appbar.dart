import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color:Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:20, vertical:10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
              Icon(Icons.menu, size:35),
              Container(width:50, height:50, decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(10), image: DecorationImage(
                  image: AssetImage('image3.png'), fit: BoxFit.cover
                )
              ),)
          ]
        ),
      )
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.infinity, 70);
}