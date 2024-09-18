import 'package:flutter/material.dart';

class Leftbar extends StatelessWidget {
  const Leftbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      color: Colors.green[100],
      child: Column(
        children: [
          // Profile Section
          Container(
            padding: const EdgeInsets.all(16),
            child: const Column(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      'https://via.placeholder.com/150'), // URL로부터 이미지 가져오기
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('홍삼룡', style: TextStyle(fontSize: 18)),
                    Text('useremail@example.com',
                        style: TextStyle(fontSize: 14)),
                  ],
                ),
              ],
            ),
          ),
          Divider(),
          // Sidebar Links
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.category),
            title: Text('Categories'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.bookmark),
            title: Text('Bookmarks'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {},
          ),
          Expanded(child: Container()), // Space filler to push Logout down
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
