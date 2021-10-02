class ProfileUser {
  int id;
  String username;
  String firstname;
  String lastname;
  String phone_number;
  String email;

  ProfileUser(int id, String username, String firstname, String lastname,
      String phone_number, String email) {
    this.id = id;
    this.username = username;
    this.firstname = firstname;
    this.lastname = lastname;
    this.phone_number = phone_number;
    this.email = email;
  }

  ProfileUser.formJson(Map json)
      : id = json['id'],
        username = json['username'],
        firstname = json['firstname'],
        lastname = json['lastname'],
        phone_number = json['phone_number'],
        email = json['email'];

  Map toJson() {
    return {
      'id': id,
      'username': username,
      'firstname': firstname,
      'lastname': lastname,
      'phone_number': phone_number,
      'email': email,
    };
  }
}
