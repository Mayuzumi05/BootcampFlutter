import 'dart:io';

void main() {
    //Nomor 1
    // print("Apakah anda mau menginstall aplikasi dart?(Y/T)");
    // String? jawaban = stdin.readLineSync()!;

    // (jawaban == 'Y' || jawaban == 'y') ? print("Anda akan menginstall aplikasi Dart") : print("Aborted");

    //Nomor 2
    // print("Masukkan nama:");
    // String? nama = stdin.readLineSync()!;
    // print("Masukkan peran:");
    // String? peran = stdin.readLineSync()!;
    // print("Nama : ${nama}, Peran : ${peran}");

    // if (nama=="" && peran=="") {
    //     print("Nama harus diisi!");
    // } else if (peran=="") {
    //     print("Halo ${nama}, Pilih peranmu untuk memulai game!");
    // } else if (nama=="") {
    //     print("Halo ${peran}, Masukkan nama mu!");
    // } else {
    //     print("Selamat datang di Dunia Werewolf, ${nama}\nHalo Penyihir ${nama}, kamu dapat melihat siapa yang menjadi ${peran}!");
    // }

    //Nomor 3
    // print("Kata-kata untuk hari?");
    // String? hari = stdin.readLineSync()!;
    // switch(hari) {
    //   case "Senin":   { print('Segala sesuatu memiliki kesudahan, yang sudah berakhir biarlah berlalu dan yakinlah semua akan baik-baik saja.'); break; }
    //   case "Selasa":   { print('Setiap detik sangatlah berharga karena waktu mengetahui banyak hal, termasuk rahasia hati.'); break; }
    //   case "Rabu":   { print('Jika kamu tak menemukan buku yang kamu cari di rak, maka tulislah sendiri.'); break; }
    //   case "Kamis":   { print('Jika hatimu banyak merasakan sakit, maka belajarlah dari rasa sakit itu untuk tidak memberikan rasa sakit pada orang lain.'); break; }
    //   case "Jumat":   { print('Hidup tak selamanya tentang pacar.'); break; }
    //   case "Sabtu":   { print('Rumah bukan hanya sebuah tempat, tetapi itu adalah perasaan.'); break; }
    //   case "Minggu":   { print('Hanya seseorang yang takut yang bisa bertindak berani. Tanpa rasa takut itu tidak ada apapun yang bisa disebut berani.'); break; }
    //   default:  { print('Hari yang kamu masukkan kayaknya salah deh...'); }
    // }

    //Nomor 4
    var tanggal = 21;
    dynamic bulan = 1;
    var tahun = 1945;

    if (bulan>=1 && bulan<=12) {
      switch(bulan) {
        case 1: {bulan = "Januari";  break;}
        case 2: {bulan = "Februari";  break;}
        case 3: {bulan = "Maret";  break;}
        case 4: {bulan = "April";  break;}
        case 5: {bulan = "Mei";  break;}
        case 6: {bulan = "Juni";  break;}
        case 7: {bulan = "Juli";  break;}
        case 8: {bulan = "Agustus";  break;}
        case 9: {bulan = "September";  break;}
        case 10: {bulan = "Oktober";  break;}
        case 11: {bulan = "November";  break;}
        case 12: {bulan = "Desember";  break;}
      }
    } else {
      bulan = "Salah";
    }
    
    if (tanggal>=1 && tanggal<=31 && bulan!="Salah" && tahun>=1900 && tahun<=2200) {
      print("$tanggal $bulan $tahun");
    } else {
      print("ada yang salah tuh bang");
    }
}