import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';


class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('XIn chao'),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 150,
          // decoration: BoxDecoration(
          //   boxShadow:[ BoxShadow(blurRadius: 10, color: Colors.black, spreadRadius: 5.0),] ,
          //   borderRadius: BorderRadius.circular(20), color: Colors.blueGrey[400],
          //            image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUQZht2MrqhWeyt4w3bm2SZXvlGooeqJ8GZw&usqp=CAU'),
          //            fit: BoxFit.cover,
          //            ),
                      
          // ), 
          child: CachedNetworkImage(imageUrl: 
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqxDbes96pJLoNcAgSHXEf29Ex03jKKGYoPg&usqp=CAU',
            placeholder: (context, url)=>Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error)=> Icon(Icons.error),
            ) ,
        ),
      ),
    );
  }
}