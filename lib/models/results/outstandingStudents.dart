class OutstandingStudents {
  int id;
  String firstName, lastName, description, image;

  OutstandingStudents({
    this.id = 0,
    this.firstName = '',
    this.lastName = '',
    this.description = '',
    this.image = '',
  });

  factory OutstandingStudents.formJson(Map<String, dynamic> json) {
    return OutstandingStudents(
        id: json['id'],
        firstName: json['first_name'],
        lastName: json['last_name'],
        description: json['description'],
        image: json['image']);
  }
}
