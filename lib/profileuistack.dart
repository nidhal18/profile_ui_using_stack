import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile UI with Stack'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          // Profile Picture
          const Stack(children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqvi8xVUG82vJcxdE4EWngz4zFQSz73QVYPg&s'),
            ),
            Positioned(
              bottom: 10,
              right: 10,
              child: Icon(
                Icons.circle,
                color: Colors.yellow,
              ),
            )
          ]),
          const SizedBox(height: 10.0),
          // Name and bio
          const Text(
            'DONKEY_KONG.IG',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Text(
            'Software Developer King',
            style: TextStyle(fontSize: 16.0, color: Colors.grey[700]),
          ),
          const SizedBox(height: 20.0),
          // Starts Section
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ProfileStat(label: 'Posts', count: 120),
              ProfileStat(label: 'Followers', count: 2500),
              ProfileStat(label: 'Following', count: 300),
            ],
          ),
        ],
      ),
    );
  }
}

// Widget for Profile Stats (Posts, Followers, Following)
class ProfileStat extends StatelessWidget {
  final String label;
  final int count;

  const ProfileStat({super.key, required this.label, required this.count});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Text(
            '$count',
            style: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 4.0),
          Text(
            label,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.grey[700],
            ),
          )
        ],
      ),
    );
  }
}
