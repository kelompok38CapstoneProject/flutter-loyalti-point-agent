class FaqModel {
  String judul;
  String pertanyaan1;
  String pertanyaan2;

  FaqModel({
    required this.judul,
    required this.pertanyaan1,
    required this.pertanyaan2,
  });
}

var listPertanyaan = [
  FaqModel(
    judul: 'Login/Register',
    pertanyaan1: 'Bagaimana caraku registrasi?',
    pertanyaan2: 'Mengapa saya harus login?',
  ),
  FaqModel(
      judul: "Redeem",
      pertanyaan1: "Bagaimana caraku mendapatkan poin?",
      pertanyaan2: "Bagaimana cara untuk menukarkan poin?"),
  FaqModel(
      judul: "PointApps",
      pertanyaan1: "Apakah PointApps itu?",
      pertanyaan2:
          "Apa keuntungan yang saya dapatkan dengan medaftar PointApps?"),
  FaqModel(
      judul: "PointApps",
      pertanyaan1: "Apakah PointApps itu?",
      pertanyaan2:
          "Apa keuntungan yang saya dapatkan dengan medaftar PointApps?"),
  FaqModel(
      judul: "PointApps",
      pertanyaan1: "Apakah PointApps itu?",
      pertanyaan2:
          "Apa keuntungan yang saya dapatkan dengan medaftar PointApps?"),
];
