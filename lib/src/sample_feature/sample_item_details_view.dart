import 'package:flutter/material.dart';
import 'manga_data_source.dart';

/// Displays detailed information about a SampleItem.
class SampleItemDetailsView extends StatelessWidget {
  const SampleItemDetailsView({super.key, required this.manga});

  static const routeName = '/sample_item';

  final Manga manga;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(manga.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(manga.thumbnailUrl),
            const SizedBox(height: 16),
            Text(
              manga.title,
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 8),
            Text(
              'Manga ID: ${manga.id}',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            // Additional manga details can be added here
          ],
        ),
      ),
    );
  }
}
