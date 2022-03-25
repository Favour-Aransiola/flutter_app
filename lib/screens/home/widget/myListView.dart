import 'package:flutter/material.dart';

class MyListView extends StatefulWidget {
  MyListView({Key? key}) : super(key: key);
  
  @override
  State<MyListView> createState() => MyListViewState();
}

class MyListViewState extends State<MyListView> {
  List<String> myListView =['Home', 'Popular', 'Most Viewed', 'All places']; 
  var isSelected=0;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index){
      return GestureDetector(
        onTap: (){
          setState(() {
            isSelected= index;
          });
        },
        child: Text('${myListView[index]}', style:TextStyle(
          color: index==isSelected?Colors.pink:Colors.black.withOpacity(0.8),
          fontSize: index==isSelected?23:18
        )),
      );
    }, 
    separatorBuilder:(context,index){
      return SizedBox(width:50);
    }, 
    itemCount: myListView.length);
    }
}