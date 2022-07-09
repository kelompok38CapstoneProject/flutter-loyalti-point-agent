class UserUpdateModel {
  UserUpdateModel({
    required this.id,
    required this.nama,
    required this.email,
    required this.phone,
    required this.role,
    required this.token,
  });

  int id;
  String nama;
  String email;
  String phone;
  String role;
  String token;
}
