import 'dart:async';

class Manga {
  final int id;
  final String title;
  final String thumbnailUrl;

  Manga({required this.id, required this.title, required this.thumbnailUrl});
}

class MangaDataSource {
  Future<List<Manga>> fetchMangaList() async {
    // Simulate network delay
    await Future.delayed(const Duration(seconds: 2));

    // Simulated data
    return [
      Manga(id: 1, title: 'Manga One', thumbnailUrl: 'https://example.com/manga1.png'),
      Manga(id: 2, title: 'Manga Two', thumbnailUrl: 'https://example.com/manga2.png'),
      Manga(id: 3, title: 'Manga Three', thumbnailUrl: 'https://example.com/manga3.png'),
    ];
  }
}
