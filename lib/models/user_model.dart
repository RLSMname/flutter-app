import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel{
  String? id;
  final String username;
  final String email;
  final String password;

  UserModel({
    this.id,
    required this.username,
    required this.email,
    required this.password,
});

  void setID(String? newID){
    id = newID;
  }

  Map<String, dynamic> toJson(){
    return {
      "id" : id,
      "username" : username,
      "email" : email,
      "password" : password,
    };
  }

  static UserModel fromJson(Map<String, dynamic> json){
    return UserModel(id: json['id'],username: json['username'], email: json['email'], password: json['password'],);
  }

  factory UserModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document){
    final data = document.data()!;
    return UserModel.fromJson(data);
  }
}