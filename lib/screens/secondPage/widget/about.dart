import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        Text('About', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
        SizedBox(height:15),
        Placeholder(fallbackHeight: 150)
      ]
    );
  }
}