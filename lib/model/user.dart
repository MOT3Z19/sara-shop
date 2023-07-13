class User {
  late int id;
  late String fullName;
  late String email;
  late String gender = 'M';
  late Null? fcmToken;
  late String token;
  late String refreshToken;
  late String password ;

  User();

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fullName = json['full_name'];
    email = json['email'];
    gender = json['gender'];
    fcmToken = json['fcm_token'];
    token = json['token'];
    refreshToken = json['refresh_token'];

  }


}

class User1 {
  late final String? token;
  late final String? username;

  User1({this.token, this.username});

  factory User1.fromJson(Map<String, dynamic> json) {
    return User1(
      token: json['token'] as String?,
      username: json['username'] as String?,
    );
  }
}

