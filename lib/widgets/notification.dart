
import 'package:flutter/material.dart';
import 'package:orale_labact0b/screens/notification_screen.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  static const List<Map<String, String>> notifications = [
    {'name': 'Maria Santos', 'post': 'Sample Post 1', 'description': 'Check out my latest update!'},
    {'name': 'Juan Dela Cruz', 'post': 'Sample Post 2', 'description': 'Having a great day today.'},
    {'name': 'Ana Reyes', 'post': 'Sample Post 3', 'description': 'A little moment worth sharing.'},
    {'name': 'Carlo Mendoza', 'post': 'Sample Post 4', 'description': 'Enjoying every moment.'},
    {'name': 'Bea Garcia', 'post': 'Sample Post 5', 'description': 'Here is something new.'},
    {'name': 'Steve Rogers', 'post': 'Sample Post 6', 'description': 'Have a wonderful day!'},
    {'name': 'Tony Stark', 'post': 'Sample Post 7', 'description': 'Just sharing an update.'},
    {'name': 'Natasha Romanoff', 'post': 'Sample Post 8', 'description': 'A beautiful day outside.'},
    {'name': 'Peter Parker', 'post': 'Sample Post 9', 'description': 'New memories to remember.'},
    {'name': 'Wanda Maximoff', 'post': 'Sample Post 10', 'description': 'Something worth posting.'},
    {'name': 'Bruce Banner', 'post': 'Sample Post 11', 'description': 'Hope you like this!'},
    {'name': 'Clint Barton', 'post': 'Sample Post 12', 'description': 'Sharing this with everyone.'},
    {'name': 'Sam Wilson', 'post': 'Sample Post 13', 'description': 'Another day, another story.'},
    {'name': 'Carol Danvers', 'post': 'Sample Post 14', 'description': 'A quick little update.'},
    {'name': 'Stephen Strange', 'post': 'Sample Post 15', 'description': 'Making the most of today.'},
    {'name': 'Scott Lang', 'post': 'Sample Post 16', 'description': 'Look at this moment!'},
    {'name': 'Hope van Dyne', 'post': 'Sample Post 17', 'description': 'Something to share today.'},
    {'name': 'T Challa', 'post': 'Sample Post 18', 'description': 'Good things are happening.'},
    {'name': 'Shuri', 'post': 'Sample Post 19', 'description': 'A new post for everyone.'},
    {'name': 'Nick Fury', 'post': 'Sample Post 20', 'description': 'Thanks for checking this out.'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: notifications.length,
      itemBuilder: (context, index) {
        final notification = notifications[index];

        return NotificationTile(
          name: notification['name']!,
          post: notification['post']!,
          description: notification['description']!,
        );
      },
    );
  }
}
