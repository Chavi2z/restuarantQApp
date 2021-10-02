class User{

  String id;
  String username, email;
  String accessToken;

  User({this.id, this.username,this.email});

  factory User.fromJson(Map<String,dynamic> json){
    User c = User();
    c.id = json['id'].toString();
    c.username = json['username'];
    c.email = json['email'];
    c.accessToken = json['access_token'];
    return c;
  }
}