class FaqModel {
  String judul;
  String pertanyaan1;
  String pertanyaan2;
  String penjelasan1;
  String penjelasan2;

  FaqModel({
    required this.judul,
    required this.pertanyaan1,
    required this.pertanyaan2,
    required this.penjelasan1,
    required this.penjelasan2,
  });
}

var listPertanyaan = [
  FaqModel(
      judul: 'Login/Register',
      pertanyaan1: 'Bagaimana caraku registrasi?',
      pertanyaan2: 'Mengapa saya harus login?',
      penjelasan1:
          "Untuk masuk kedalam aplikasi, kamu harus login terlebih dahulu.Jika kamu belum punya akun, kamu bisa registrasi dengan memasukkan data diri pada halaman awal registrasi",
      penjelasan2:
          "Untuk mengakses akun kamu, kamu harus login dengan memasukkan email dan password yang telah didaftarkan terlebih dahulu."),
  FaqModel(
      judul: "Redeem",
      pertanyaan1: "Bagaimana caraku mendapatkan poin?",
      pertanyaan2: "Bagaimana cara untuk menukarkan poin?",
      penjelasan1:
          "Untuk mendapatkan poin, kamu dapat melakukan transaksi sebanyak banyaknya pada merchant yang telah bekerja sama dengan aplikasi PointApps",
      penjelasan2:
          "Kamu bisa menukarkan poin dengan cara memilih produk yang diinginkan, kemudian disesuaikan dengan poin yang kamu sudah dapatkan."),
  FaqModel(
      judul: "PointApps",
      pertanyaan1: "Apakah PointApps itu?",
      pertanyaan2:
          "Apa keuntungan yang saya dapatkan dengan medaftar PointApps?",
      penjelasan1:
          "PointApps adalah aplikasi yang bisa menukarkan poin anda dengan berbagai macam product kami",
      penjelasan2:
          "Keuntungan yang didapat ketika mendaftar PointApps adalah poin yang anda tukarkan dengan berbagai macam product kami."),
];
