class RegisterModel {
  int? id;
  String? nama;
  String? email;
  String? token;

  RegisterModel({this.id, this.nama, this.email, this.token});

  RegisterModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nama = json['nama'];
    email = json['email'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['nama'] = nama;
    data['email'] = email;
    data['token'] = token;
    return data;
  }
}