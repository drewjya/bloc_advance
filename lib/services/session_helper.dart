import 'package:bloc_advance/models/users_model.dart';
import 'package:hive/hive.dart';

class SessionHelper {
  static Future<UserModel?> read() async {
    var box = await Hive.openBox('bloac_advance');
    var result = box.get('session');
    if (result != null) {
      return UserModel(
          username: result["username"], password: result["password"]);
    }
    return null;
  }

  static write(UserModel userModel) async {
    var box = await Hive.openBox('bloac_advance');
    box.put('session',
        {"username": userModel.username, "password": userModel.password});
  }

  static logout() async {
    var box = await Hive.openBox('bloac_advance');
    box.delete('session');
  }
}
