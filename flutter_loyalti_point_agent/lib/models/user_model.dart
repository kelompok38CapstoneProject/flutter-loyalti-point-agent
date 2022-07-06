class UserModel {
  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
    required this.role,
    required this.point,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
  });

  int id;
  String name;
  String email;
  String password;
  String phone;
  String role;
  int point;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;

  // factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
  //       id: json["id"],
  //       name: json["name"],
  //       email: json["email"],
  //       password: json["password"],
  //       phone: json["phone"],
  //       role: json["role"],
  //       point: json["point"],
  //       createdAt: DateTime.parse(json["CreatedAt"]),
  //       updatedAt: DateTime.parse(json["UpdatedAt"]),
  //       deletedAt: json["DeletedAt"],
  //     );

  // Map<String, dynamic> toJson() => {
  //       "id": id,
  //       "name": name,
  //       "email": email,
  //       "password": password,
  //       "phone": phone,
  //       "role": role,
  //       "point": point,
  //       "CreatedAt": createdAt.toIso8601String(),
  //       "UpdatedAt": updatedAt.toIso8601String(),
  //       "DeletedAt": deletedAt,
  //     };
}
