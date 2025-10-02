class Book {
  String title;
  String author;
  String description;
  String price;
  String imageAsset;
  List<String> imageUrls;
  String officialUrl;

  Book({
    required this.title,
    required this.author,
    required this.description,
    required this.price,
    required this.imageAsset,
    required this.imageUrls,
    required this.officialUrl,
  });
}

var bookList = [
  Book(
    title: 'Flutter for Beginners',
    author: 'John Smith',
    description:
        'Buku pengantar Flutter untuk pemula dengan contoh project sederhana.',
    price: 'Rp 150.000',
    imageAsset: 'images/flutter_for_beginners.jpg',
    imageUrls: [
      'https://miro.medium.com/v2/resize:fit:1400/format:webp/1*1BNzOqzb4U8f1D2gnObYKw.jpeg',
      'https://docs.flutter.dev/assets/images/flutter-logo-sharing.png',
      'https://flutter.dev/assets/homepage/carousel/slide_1-bg-455fb8115838e04a39f44945d9a17f1a0ce490a5d2fade68084f06f4edae49cb.jpg',
    ],
    officialUrl: 'https://docs.flutter.dev/',
  ),
  Book(
    title: 'Dart Programming Guide',
    author: 'Jane Doe',
    description:
        'Panduan lengkap bahasa Dart mulai dari basic hingga advanced topic.',
    price: 'Rp 180.000',
    imageAsset: 'images/dart_programming_guide.jpg',
    imageUrls: [
      'https://dart.dev/assets/shared/dart-logo-for-shares.png?2',
      'https://miro.medium.com/v2/resize:fit:1200/format:webp/1*fQzHzVvzJeYfij24XtVsKw.png',
      'https://dart.dev/assets/homepage/carousel/slide_1-bg-9ad2d67d2f89241c7fa8b54e5b4a3da1a186faade0a06b1aaf54f2f7e3a2e633.png',
    ],
    officialUrl: 'https://dart.dev/',
  ),
  Book(
    title: 'Clean Code',
    author: 'Robert C. Martin',
    description:
        'Buku klasik yang mengajarkan praktik terbaik menulis kode yang rapi dan maintainable.',
    price: 'Rp 300.000',
    imageAsset: 'images/clean_code.jpg',
    imageUrls: [
      'https://m.media-amazon.com/images/I/41xShlnTZTL.jpg',
      'https://miro.medium.com/v2/resize:fit:720/format:webp/1*G6d0X5lKf0DE6Yq9fdrDug.jpeg',
      'https://images-na.ssl-images-amazon.com/images/I/41-sN-mzwKL._SX374_BO1,204,203,200_.jpg',
    ],
    officialUrl: 'https://www.oreilly.com/library/view/clean-code/9780136083238/',
  ),
  Book(
    title: 'The Pragmatic Programmer',
    author: 'Andrew Hunt & David Thomas',
    description:
      'Buku panduan pengembangan software yang berfokus pada praktik pragmatis dalam coding dan desain.',
    price: 'Rp 250.000',
    imageAsset: 'images/pragmatic_programmer.jpg',
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/518FqJvR9aL._SX376_BO1,204,203,200_.jpg',
      'https://pragprog.com/titles/tpp20/pragmatic-programmer-20th-anniversary-edition/cover/',  // mungkin lepas, tapi bisa dicoba
      'https://images.bloomsbury.com/rep/s/v1/cover/9780135957059',
    ],
    officialUrl: 'https://pragprog.com/titles/tpp20/the-pragmatic-programmer-20th-anniversary-edition/',
  ),
  Book(
    title: 'Refactoring',
    author: 'Martin Fowler',
    description:
      'Menggambarkan teknik-teknik untuk memperbaiki struktur internal kode tanpa merubah perilaku eksternal.',
    price: 'Rp 280.000',
    imageAsset: 'images/refactoring.jpg',
    imageUrls: [
      'https://martinfowler.com/books/Refactoring/cover/Refactoring-2nd-Edition.png',
      'https://images-na.ssl-images-amazon.com/images/I/41jEbK-jG+L._SX396_BO1,204,203,200_.jpg',
      'https://learning.oreilly.com/library/cover/9780134757599/300w/',
    ],
    officialUrl: 'https://martinfowler.com/books/refactoring.html',
  ),
  Book(
    title: 'Design Patterns',
    author: 'Erich Gamma, Richard Helm, Ralph Johnson, John Vlissides',
    description:
      'Kumpulan pola desain dalam software engineering yang digunakan secara luas.',
    price: 'Rp 320.000',
    imageAsset: 'images/design_patterns.jpg',
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/51kuc0LS1rL._SX379_BO1,204,203,200_.jpg',
      'https://www.oreilly.com/library/cover/9780201633610/300w/',
      'https://cdn0.tnwcdn.com/wp-content/blogs.dir/1/files/2012/12/DesignPatterns1.jpg',
    ],
    officialUrl: 'https://en.wikipedia.org/wiki/Design_Patterns',
  ),
  Book(
    title: 'Clean Architecture',
    author: 'Robert C. Martin',
    description:
      'Buku tentang arsitektur perangkat lunak yang dapat dipelihara dalam jangka panjang.',
    price: 'Rp 310.000',
    imageAsset: 'images/clean_architecture.jpg',
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/41-sN-mzwKL._SX377_BO1,204,203,200_.jpg',
      'https://www.oreilly.com/library/cover/9780134494166/300w/',
      'https://cdn.statically.io/img/miro.medium.com/v2/resize:fit:1400/format:webp/1*XJqz5SHAyDUrhmKByidRfA.jpeg',
    ],
    officialUrl: 'https://www.oreilly.com/library/view/clean-architecture/9780134494166/',
  ),
];
