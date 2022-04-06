import 'dart:convert';

class UserModel {
  String username;
  String password;
  int? id;
  UserModel({
    required this.username,
    required this.password,
    this.id,
  });

  UserModel copyWith({
    String? username,
    String? password,
    int? id,
  }) {
    return UserModel(
      username: username ?? this.username,
      password: password ?? this.password,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'username': username,
      'password': password,
    };
  }

  Map<String, dynamic> toMapReceive() {
    return {
      'username': username,
      'password': password,
      'id': id,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      username: map['username'] ?? '',
      password: map['password'] ?? '',
      id: map['id']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));

  @override
  String toString() =>
      'UserModel(username: $username, password: $password, id: $id)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserModel &&
        other.username == username &&
        other.password == password &&
        other.id == id;
  }

  @override
  int get hashCode => username.hashCode ^ password.hashCode ^ id.hashCode;
}
