class UserPointModel {
  int? id;
  String? name;
  String? email;
  String? password;
  String? phone;
  String? role;
  int? point;

  UserPointModel({
    this.id,
    this.name,
    this.email,
    this.password,
    this.phone,
    this.role,
    this.point,
  });

  UserPointModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
    phone = json['phone'];
    role = json['role'];
    point = json['point'];
  }
}
