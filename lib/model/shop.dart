class Shop {
  int id;
  String name;
  String address;
  String phonenumber;
  String description;
  String opentime;
  String closetime;
  String image;

  Shop(int id, String name, String address, String phonenumber,
      String description, String opentime, String closetime, String image) {
    this.id = id;
    this.name = name;
    this.address = address;
    this.phonenumber = phonenumber;
    this.description = description;
    this.opentime = opentime;
    this.closetime = opentime;
    this.image = image;
  }

  Shop.fromJson(Map json)
      : id = json['id'],
        name = json['name'],
        address = json['address'],
        phonenumber = json['phonenumber'],
        description = json['description'],
        opentime = json['opentime'],
        closetime = json['closetime'],
        image = json['image'];

  Map toJson() {
    return {
      'id': id,
      'name': name,
      'address': address,
      'phonenumber': phonenumber,
      'description': description,
      'opentime': opentime,
      'closetime': closetime,
      'image': image,
    };
  }
}
