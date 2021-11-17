import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_login_ui/models/user_data.dart';


class UserDataDao {
  final DatabaseReference _userDataRef =
      FirebaseDatabase.instance.reference().child('users');

  void saveUser(UserData userData) {
    _userDataRef.push().set(userData.toMap());
  }

  Query getUserQuery() {
    return _userDataRef;
  }
}
