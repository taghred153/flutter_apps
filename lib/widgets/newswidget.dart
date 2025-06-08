import 'package:flutter/material.dart';

class NewsWidget extends StatelessWidget {
  String urlToImage;
  String title;
  String description;

  NewsWidget({super.key,
    required this.urlToImage,
    required this.title,
    required this.description,

  });
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Image.network(urlToImage),
        SizedBox(height: 31,),
        Text(title,style: TextStyle(fontWeight: FontWeight.bold),),
        Text(description),
      ],
    );
  }
}
