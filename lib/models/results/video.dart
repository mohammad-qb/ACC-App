class Video {
  String url;

  Video({this.url = ''});

  factory Video.formJson(Map<String, dynamic> json) {
    return Video(url: json['url']);
  }
}
