import 'package:collectapp/src/global/logger/logger.dart';

class UserDescription {
  final String name;
  final String email;
  final String sub;
  final String origin;

  UserDescription({this.name, this.email, this.sub, this.origin});
}

class UserRepository {
  static Future<UserDescription> loginWithCredentials(String username, String password) async {
    logger.d("credentials: {username: $username, password: $password}");
    return null;
  }
}
