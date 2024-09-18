import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sam_ryong_blog_client/components/blogpost.dart';

class MainPage extends StatelessWidget {
  const MainPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            // Image Carousel
            CarouselSlider(
              options: CarouselOptions(height: 200.0),
              items: [
                'https://blogpfthumb-phinf.pstatic.net/MjAyMTA1MjRfMTA1/MDAxNjIxNzgyMzkyNDI5.zbN65cR149d24nF2PmIEHGKDWQYwqjgJ0CSg1FiDAasg.X3rty_WJFkhC0FRv_OGrnh-XxOMe7gC2g4xv3KH2Px0g.PNG.ddolggi18/profileImage.png?type=s1', // URL로 이미지 가져오기
                'https://via.placeholder.com/800x400',
                'https://via.placeholder.com/800x400'
              ].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(color: Colors.green),
                      child: Image.network(i, fit: BoxFit.cover), // URL로 이미지 표시
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            // Blog Content
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  BlogPost(
                    title: 'Post 1 Title',
                    content:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                    comments: 30,
                    likes: 57,
                  ),
                  BlogPost(
                    title: 'Post 2 Title',
                    content:
                        'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                    comments: 40,
                    likes: 80,
                  ),
                  BlogPost(
                    title: 'Post 3 Title',
                    content:
                        'Ut enim ad minim veniam, quis nostrud exercitation.',
                    comments: 50,
                    likes: 100,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
