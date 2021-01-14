import 'package:flutter/material.dart';
import '../image_model/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;
  ImageList(this.images);

  Widget build(context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        return buildImage(images[index]);
      },
    );
  }

  Widget buildImage(ImageModel images) {
    return Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(border: Border.all(color: Colors.purple)),
      child: Column(children: <Widget>[
        Image.network(images.url),
        SizedBox(
          height: 8.0,
        ),
        Text(images.title)
      ]),
    );
  }
}
