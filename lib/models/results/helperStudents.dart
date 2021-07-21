class HelperStudents {
  int id;
  String firstName, lastName, description, image;

  HelperStudents({
    this.id = 0,
    this.firstName = '',
    this.lastName = '',
    this.description = '',
    this.image = '',
  });

  factory HelperStudents.formJson(Map<String, dynamic> json) {
    return HelperStudents(
        id: json['id'],
        firstName: json['first_name'],
        lastName: json['last_name'],
        description: json['description'],
        image: json['image']);
  }
}
