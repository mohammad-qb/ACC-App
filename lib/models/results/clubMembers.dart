class ClubMembers {
  int id;
  String firstName, lastName, rank, image;

  ClubMembers(
      {this.id = 0,
      this.firstName = '',
      this.lastName = '',
      this.rank = '',
      this.image = ''});

  factory ClubMembers.formJson(Map<String, dynamic> json) {
    return ClubMembers(
      id: json['id'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      rank: json['rank'],
      image: json['image'],
    );
  }
}
