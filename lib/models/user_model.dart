class User {
  String? id;
  String? idq;
  String? name;
  String? email;
  String? user;
  String? password;
  String? img;
  String? bloodType;
  String? nss;

  User({
    required this.id,
    required this.idq,
    required this.name,
    required this.email,
    required this.user,
    required this.password,
    required this.img,
    required this.bloodType,
    required this.nss,
  });

  User.fromJsonMap(Map<String, dynamic> json) {
    id = json['id'];
    idq = json['idq'];
    name = json['name'];
    email = json['email'];
    user = json['user'];
    password = json['password'];
    img = json['img'];
    bloodType = json['bloodType'];
    nss = json['nss'];
  }
}