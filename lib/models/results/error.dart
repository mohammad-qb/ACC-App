class Error {
  String message;
  bool success;

  Error({this.message = '', this.success = false});

  factory Error.formJson(Map<String, dynamic> json) {
    return Error(
      message: json['message'],
      success: json['success'],
    );
  }
}
