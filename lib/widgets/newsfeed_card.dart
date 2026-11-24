
import 'package:flutter/material.dart';
import 'package:orale_labact0b/constant.dart';
import 'custom_text.dart';

class NewsfeedCard extends StatelessWidget {
  final String name;
  final String date;
  final String content;
  final int likes;
  final int comments;
  final int shares;
  final String? imagePath;

  const NewsfeedCard({
    super.key,
    required this.name,
    required this.date,
    required this.content,
    required this.likes,
    required this.comments,
    required this.shares,
    this.imagePath,
  });

  Widget _stat(IconData icon, int count) {
    return Row(
      children: [
        Icon(icon, size: 20, color: dkPrimary),
        const SizedBox(width: 4),
        CustomText(text: '$count', size: 13),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: dkLightPrimary,
                  child: CustomText(
                    text: name[0],
                    weight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: name,
                        size: 16,
                        weight: FontWeight.bold,
                      ),
                      CustomText(
                        text: date,
                        size: 12,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            CustomText(text: content),
            if (imagePath != null) ...[
              const SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  imagePath!,
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      height: 200,
                      width: double.infinity,
                      color: dkLightPrimary.withValues(alpha: 0.3),
                      child: const Center(
                        child: Icon(Icons.broken_image, size: 50),
                      ),
                    );
                  },
                ),
              ),
            ],
            const Divider(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _stat(Icons.favorite_border, likes),
                _stat(Icons.chat_bubble_outline, comments),
                _stat(Icons.share_outlined, shares),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
