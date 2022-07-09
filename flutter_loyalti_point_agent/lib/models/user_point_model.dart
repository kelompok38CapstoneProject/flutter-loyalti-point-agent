class UserPointModel {
  UserPointModel({
    this.id,
    this.name,
    this.email,
    this.password,
    this.phone,
    this.role,
    this.point,
    this.deletedAt,
  });

  int? id;
  String? name;
  String? email;
  String? password;
  String? phone;
  String? role;
  int? point;
  dynamic deletedAt;

  // factory UserPointModel.fromJson(Map<String, dynamic> json) => UserPointModel(
  //     id: json["id"],
  //     name: json["name"],
  //     email: json["email"],
  //     password: json["password"],
  //     phone: json["phone"],
  //     role: json["role"],
  //     point: json["point"],
  //     deletedAt: json["DeletedAt"],
  // );

  // Map<String, dynamic> toJson() => {
  //     "id": id,
  //     "name": name,
  //     "email": email,
  //     "password": password,
  //     "phone": phone,
  //     "role": role,
  //     "point": point,
  //     "DeletedAt": deletedAt,
  // };
}
