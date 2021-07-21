class EducationalStaff {
  int id;
  String firstName, lastName, description, image, facebook;

  EducationalStaff(
      {this.id = 0,
      this.firstName = '',
      this.lastName = '',
      this.description = '',
      this.image = '',
      this.facebook = ''});

  factory EducationalStaff.formJson(Map<String, dynamic> json) {
    return EducationalStaff(
        id: json['id'],
        firstName: json['first_name'],
        lastName: json['last_name'],
        description: json['description'],
        image: json['image'],
        facebook: json['facebook']);
  }
}
