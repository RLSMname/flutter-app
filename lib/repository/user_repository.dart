import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:testproj/models/user_model.dart';

class UserRepository{
  final _db = FirebaseFirestore.instance;

  UserRepository(){

  }

  Future createUser(UserModel user) async {
    final docUser = _db.collection("users").doc();
    user.setID(docUser.id);
    await docUser.set(user.toJson());
  }

  Future<UserModel> getUserDetails(String email) async {
    final snapshot = await _db.collection("users").where("email", isEqualTo: email).get();
    final userData = snapshot.docs.map((e) => UserModel.fromSnapshot(e)).single;
    return userData;
  }

  Future<List<UserModel>> getAllUsers(String email) async {
    final snapshot = await _db.collection("users").where("email", isEqualTo: email).get();
    final userData = snapshot.docs.map((e) => UserModel.fromSnapshot(e)).toList();
    return userData;
  }
}