class Destination {
  final String title;
  final String link;

  Destination({required this.title, required this.link});

  factory Destination.fromJson(Map<String, dynamic> json) {
    return Destination(
      title: json['title'] ?? '',
      link: json['thumbnail'] ?? '',
    );
  }

@override
  String toString() {
    return title;
  }

}
