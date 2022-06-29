class RegisterModel {
  int id;
  String nama;
  String email;
  String token;

  RegisterModel({
    required this.id,
    required this.nama,
    required this.email,
    required this.token,
  });
  // factory RegisterModel.fromJson(Map<String, dynamic> json) => RegisterModel(
  //       id: json["id"],
  //       nama: json["nama"],
  //       email: json["email"],
  //       token: json["token"],
  //     );

  // Map<String, dynamic> toJson() => {
  //       "id": id,
  //       "nama": nama,
  //       "email": email,
  //       "token": token,
  //     };
}


