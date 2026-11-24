
import 'package:flutter/material.dart';
import 'package:orale_labact0b/constant.dart';
import 'package:orale_labact0b/widgets/custom_text.dart';

class NotificationTile extends StatelessWidget {
  final String title;
  final String time;
  final IconData icon;
  final bool isUnread;

  const NotificationTile({
    super.key,
    required this.title,
    required this.time,
    required this.icon,
    this.isUnread = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: isUnread ? dkLightPrimary.withValues(alpha: 0.2) : null,
      leading: CircleAvatar(
        backgroundColor: dkSecondary,
        child: Icon(icon, color: Colors.white),
      ),
      title: CustomText(
        text: title,
        weight: isUnread ? FontWeight.bold : FontWeight.normal,
      ),
      subtitle: CustomText(
        text: time,
        size: 12,
        color: Colors.grey,
      ),
    );
  }
}
