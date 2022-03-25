import 'package:flutter/material.dart';

class BottomListView extends StatefulWidget {
  BottomListView({Key? key}) : super(key: key);

  @override
  State<BottomListView> createState() => BottomListViewState();
}

class BottomListViewState extends State<BottomListView> {
 
  int MycurrSelected=0;

  
  @override  
  
  Widget build(BuildContext context) {
      List<Icon> myIcons =[Icon(Icons.bookmark, color:MycurrSelected==0?Colors.white:Colors.pink),
  Icon(Icons.watch_later_outlined, color:MycurrSelected==1?Colors.white:Colors.pink),
  Icon(Icons.food_bank_outlined, color:MycurrSelected==2?Colors.white:Colors.pink),
  Icon(Icons.flight_takeoff, color:MycurrSelected==3?Colors.white:Colors.pink),
  Icon(Icons.share, color:MycurrSelected==4?Colors.white:Colors.pink)

  
  ];
    return ListView.separated(
       scrollDirection: Axis.horizontal,
      itemBuilder: (context, index){
        return GestureDetector(
          onTap: (){
            setState(() {
              MycurrSelected = index;
            });
          },
          child: Container(width: 50,height: 50,
          alignment: Alignment.center,
          decoration:BoxDecoration(
            color: index==MycurrSelected? Colors.pink:Colors.white,
            borderRadius: BorderRadius.circular(15)
          ),
          child: myIcons[index],
          ),
        );
      }, 
      separatorBuilder: (context, _){return SizedBox(width:40);}, 
      itemCount: myIcons.length);
  }
}
