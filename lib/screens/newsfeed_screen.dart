
import 'package:flutter/material.dart';
import '../widgets/newsfeed_card.dart';

class NewsfeedScreen extends StatelessWidget {
  const NewsfeedScreen({super.key});

  static const List<Map<String, dynamic>> _posts = [
    {
      'name': 'Maria Santos',
      'date': 'Nov 24, 2026',
      'content': 'Golden hour hits different today.',
      'likes': 120,
      'comments': 14,
      'shares': 5,
      'imagePath': 'assets/images/golden_hour.jpg',
    },
    {
      'name': 'Juan Dela Cruz',
      'date': 'Nov 23, 2026',
      'content': 'Finally finished my Flutter lab!',
      'likes': 85,
      'comments': 22,
      'shares': 3,
      'imagePath': null,
    },
    {
      'name': 'Ana Reyes',
      'date': 'Nov 23, 2026',
      'content': 'Coffee and code, the best combo.',
      'likes': 64,
      'comments': 8,
      'shares': 2,
      'imagePath': 'assets/images/coffee_code.jpg',
    },
    {
      'name': 'Carlo Mendoza',
      'date': 'Nov 22, 2026',
      'content': 'Anyone up for a study group tonight?',
      'likes': 40,
      'comments': 31,
      'shares': 1,
      'imagePath': null,
    },
    {
      'name': 'Bea Lim',
      'date': 'Nov 22, 2026',
      'content': 'New sketch for my portfolio.',
      'likes': 210,
      'comments': 18,
      'shares': 12,
      'imagePath': 'assets/images/sketch.jpg',
    },
    {
      'name': 'Paolo Garcia',
      'date': 'Nov 21, 2026',
      'content': 'Rainy weekend, perfect for movies.',
      'likes': 33,
      'comments': 6,
      'shares': 0,
      'imagePath': null,
    },
    {
      'name': 'Kyla Torres',
      'date': 'Nov 20, 2026',
      'content': 'Sunset at the bay was unreal.',
      'likes': 301,
      'comments': 45,
      'shares': 20,
      'imagePath': 'assets/images/sunset_bay.jpg',
    },
    {
      'name': 'Miguel Ramos',
      'date': 'Nov 19, 2026',
      'content': 'Hot reload is my favorite button.',
      'likes': 97,
      'comments': 10,
      'shares': 7,
      'imagePath': null,
    },
    {
      'name': 'Sofia Cruz',
      'date': 'Nov 18, 2026',
      'content': 'Trying a new recipe tonight.',
      'likes': 150,
      'comments': 27,
      'shares': 9,
      'imagePath': 'assets/images/recipe.jpg',
    },
    {
      'name': 'Rico Villanueva',
      'date': 'Nov 17, 2026',
      'content': 'Deadline week, wish me luck!',
      'likes': 72,
      'comments': 19,
      'shares': 4,
      'imagePath': null,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _posts.length,
      itemBuilder: (context, i) {
        final p = _posts[i];

        return NewsfeedCard(
          name: p['name'],
          date: p['date'],
          content: p['content'],
          likes: p['likes'],
          comments: p['comments'],
          shares: p['shares'],
          imagePath: p['imagePath'],
        );
      },
    );
  }
}
