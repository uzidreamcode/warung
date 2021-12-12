class Restaurant {
  final String img;
  final String title;
  final String address;
  final String rating;
  final String harga;

  Restaurant(this.title, {this.address, this.img, this.rating, this.harga});
}

List restaurants = [
  Restaurant(
    'sate',
    img: "assets/sate.jpg",
    address: "Sate atau satai adalah makanan yang terbuat dari daging yang dipotong kecil-kecil dan ditusuk sedemikian rupa dengan tusukan lidi tulang daun kelapa atau bambu, kemudian dipanggang menggunakan bara arang kayu. ... Sate juga populer di Belanda karena dipengaruhi masakan Indonesia yang dulu merupakan koloninya.",
    rating: "4.5",
    harga: "asu",
  ),
  Restaurant(
      'ayam',
      img: "assets/food2.jpeg",
      address: " 1278 Loving Acres RoadKansas City, MO 64110",
      rating: "4.5",
      harga: "Rp 15000",
  ),


];
