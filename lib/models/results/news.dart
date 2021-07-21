class News {
  int id;
  String title, description, image;
  var dateTime;

  News(
      {this.id = 0,
      this.title = '',
      this.description = '',
      this.image = '',
      this.dateTime = ''});

  factory News.formJson(Map<String, dynamic> json) {
    return News(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      image: json['image'],
      dateTime: json['dateTime'],
    );
  }
}
