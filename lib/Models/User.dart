import 'dart:convert';

class User {
  final String? fname;
  final String? lname;
  final String? username;
  final String? phone;
  final String? timezone;
  final String email;
  final String password;

  User(
      {this.fname,
      this.lname,
      this.username,
      this.phone,
      this.timezone,
      required this.email,
      required this.password});

  Map<String, dynamic> ToMap() {
    return {
      'fname': fname,
      'lname': lname,
      'username': username,
      'phone': phone,
      'timezone': timezone,
      'email': email,
      'password': password,
    };
  }

  String toJson() => json.encode(ToMap());
}
