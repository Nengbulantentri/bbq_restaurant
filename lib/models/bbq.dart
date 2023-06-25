class Menu {
  int id;
  String nama, banner, desc, buka;
  double rating;

  Menu({
    required this.id,
    required this.nama,
    required this.banner,
    required this.desc,
    required this.rating,
    required this.buka,
  });
}

var menuList = [
  Menu(
      id: 0,
      nama: "Shukaku Shabu BBQ",
      banner: "assets/BBQ.jpg",
      desc:
          "Shukaku Garut menawarkan banyak menu mulai dari sushi, barbeque, shabu, sate, siomay, juga makanan manis lainnya. Untuk dagingnya pun tidak hanya daging sapi saja loh, ada juga daging ayam dan ikan segar. pilihan topingnya melimpah ruah. Harga yang dibandrol mulai dari Rp.99.000 kamu bisa menikmati menu yang beragam",
      rating: 4.7,
      buka: "10.00 - 21.00"),
  Menu(
      id: 1,
      nama: "Saeungapna",
      banner: "assets/BBQ2.jpg",
      desc:
          "Resto EYCE lainnta yang bisa kamu coba di Agrut adalah saeungapna. Saeungapna sendiri berasal dari bahasa indonesia yang artinya sampe kenyang. Makanan yang disajikan beragam, bahkan ada jajanan kaki lima seperti basreng, telur gulung, cilor dan jamur crispy. Dengan harga Rp.50.000 aja kamu bisa makan sepuasnya lohh",
      rating: 4.6,
      buka: "11.00 - 22.00"),
  Menu(
      id: 2,
      nama: "Chago Korean BBQ ALL You Can Eat",
      banner: "assets/BBQ3.jpg",
      desc:
          "Selain bisa makan ditempat, kamu juga bisa memesan paket take away mulai dari harga Rp.45.000 sudah bisa menikmati bakar-bakar loh. Harga tersebut sudah sepakat dengan peminjaman alat berupa alat pemanggang dan kompor, juga dengan daging, sayuran, toping dan suki sukian. Jika kamy mau makan di tempat, harganya mulai dari Rp.40.000 saja kamu sudah bisa makan kenyang",
      rating: 4.5,
      buka: "11.00 - 21.00"),
];
