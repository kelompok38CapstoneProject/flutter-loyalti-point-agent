class FaqModel {
  String judul;
  String pertanyaan1;
  String pertanyaan2;
  String? pertanyaan3;

  FaqModel(
      {required this.judul,
      required this.pertanyaan1,
      required this.pertanyaan2,
      this.pertanyaan3});
}

var listPertanyaan = [
  FaqModel(
      judul: 'Login/Register',
      pertanyaan1: 'Bagaimana caraku registrasi?',
      pertanyaan2: 'Mengapa saya harus login?',
      pertanyaan3: 'Mengapa nomor telephone diperlukan saat mendaftar?'),
  FaqModel(
      judul: "Redeem",
      pertanyaan1: "Bagaimana caraku mendapatkan poin?",
      pertanyaan2: "Bagaimana cara untuk menukarkan poin?"),
  FaqModel(
      judul: "PointApps",
      pertanyaan1: "Apakah PointApps itu?",
      pertanyaan2:
          "Apa keuntungan yang saya dapatkan dengan medaftar PointApps?"),
];
