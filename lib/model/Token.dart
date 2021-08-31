// class Access_token {
//   static String access_token;
//   static String token_type;

// }

// class convert json
class Access_token {
  final String access_token;
  final String token_type;

  Access_token(this.access_token, this.token_type);

  Access_token.fromJson(Map<String, dynamic> json)
      : access_token = json['access_token'],
        token_type = json['token_type'];

  Map<String, dynamic> toJson() => {
        'access_token': access_token,
        'token_type': token_type,
      };
}

// class send data
class Access_token_send {
  final String access_token;
  Access_token_send(this.access_token);
}

// void main() {
//   Access_token.access_token = "hello";
//   print(Access_token.access_token);
// }
