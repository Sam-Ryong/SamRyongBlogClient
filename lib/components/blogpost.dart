import 'package:flutter/material.dart';

class BlogPost extends StatelessWidget {
  final String title;
  final String content;
  final int comments;
  final int likes;

  BlogPost(
      {required this.title,
      required this.content,
      required this.comments,
      required this.likes});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text(content),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.comment, size: 16),
                    SizedBox(width: 5),
                    Text('$comments comments'),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.thumb_up, size: 16),
                    SizedBox(width: 5),
                    Text('$likes likes'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
