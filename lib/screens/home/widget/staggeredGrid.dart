import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/home/model/staggeredModel.dart';
import 'package:flutter_application_2/screens/secondPage/secondPage.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';



class MyStaggeredGrid extends StatelessWidget {
  MyStaggeredGrid({Key? key}) : super(key: key);
  List<MyStaggerredGrid>staggeredList=[
    MyStaggerredGrid(containerSize: 200.0, ImageUrl: 'image3.png'),
    MyStaggerredGrid(containerSize: 150.0, ImageUrl: 'image3.png'),
    MyStaggerredGrid(containerSize: 100.0, ImageUrl: 'image3.png'),
    MyStaggerredGrid(containerSize: 150.0, ImageUrl: 'image3.png'),
    MyStaggerredGrid(containerSize: 100.0, ImageUrl: 'image3.png'),
    MyStaggerredGrid(containerSize: 200.0, ImageUrl: 'image3.png'),
    MyStaggerredGrid(containerSize: 200.0, ImageUrl: 'image3.png'),

  ];
  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      crossAxisCount: 2, 
      crossAxisSpacing: 15,
      mainAxisSpacing:15,
      itemCount: staggeredList.length,
      itemBuilder: (context, index){
          return GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context){
                  return secondPage();
                }
              ));
            },
            child: Container(
              height: staggeredList[index].containerSize,
              width:MediaQuery.of(context).size.width/2.2,
              decoration:BoxDecoration(borderRadius: BorderRadius.circular(15),
              image:DecorationImage(image: AssetImage('${staggeredList[index].ImageUrl}'), 
              fit:BoxFit.cover))
          
            ),
          );
      }, 
      staggeredTileBuilder: (index){
        return StaggeredTile.fit(1);
      }

    );}
  }
