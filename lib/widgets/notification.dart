
import 'package:flutter/material.dart';
import 'package:orale_labact0b/screens/notification_screen.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  static const List<String> _names = [
    'Maria', 'Juan', 'Ana', 'Carlo', 'Bea'
  ];

  static const List<(String, IconData)> _actions = [
    ('liked your post', Icons.favorite),
    ('commented on your post', Icons.chat_bubble),
    ('shared your post', Icons.share),
    ('started following you', Icons.person_add),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, i) {
        final action = _actions[i % _actions.length];
        final name = _names[i % _names.length];

        return NotificationTile(
          title: '$name ${action.$1}',
          icon: action.$2,
          time: '${i + 1}h ago',
          isUnread: i < 5,
        );
      },
    );
  }
}
