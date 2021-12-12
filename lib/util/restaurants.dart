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
    'Sate',
    img: "assets/sate.jpg",
    address: "Sate atau satai adalah makanan yang terbuat dari daging yang dipotong kecil-kecil dan ditusuk sedemikian rupa dengan tusukan lidi tulang daun kelapa atau bambu, kemudian dipanggang menggunakan bara arang kayu. ... Sate juga populer di Belanda karena dipengaruhi masakan Indonesia yang dulu merupakan koloninya.",
    rating: "4.5",
    harga: "Rp 16000",
  ),
  Restaurant(
      'Ayam Geprek',
      img: "assets/geprek.jpg",
      address: " Ayam geprek is an Indonesian crispy battered fried chicken crushed and mixed with hot and spicy sambal. Currently ayam geprek is commonly found in Indonesia and neighbouring countries, however its origin was from Yogyakarta in Java",
      rating: "4.9",
      harga: "Rp 10000",
  ),
  Restaurant(
    'Lontong Balap',
    img: "assets/balap.jpg",
    address: " Lontong balap is an Indonesian traditional rice dish, well known in Javanese cuisine, made of lontong, tauge, fried tofu, lentho, fried shallots, sambal petis and sweet soy sauce",
    rating: "5.5",
    harga: "Rp 10000",
  ),
  Restaurant(
    'Es Daluman',
    img: "assets/daluman.jpeg",
    address: " Cincau (Cyclea barbata) adalah tumbuhan yang daunnya dapat diperas menjadi kental untuk isi minuman. Tumbuhan ini merupakan spesies dari genus cyclea Daun cincau hijau banyak ditemui di berbagai tempat di Indonesia, dari pasar tradisional hingga di pusat perbelanjaan modern. Tanaman ini dikenal dengan nama camcao (Jawa), camcauh (Sunda), juju, kepleng, krotok, tarawalu, tahulu (Melayu). Terdapat beberapa jenis cincau yang dikenal saat ini yaitu cincau hijau, cincau hitam, dan cincau minyak. Masyarakat Indonesia menggemari jenis cincau hijau karena fisik daun cincau hijau (Cyclea barbata) yang tipis dan lemas sehingga lebih mudah dibentuk menjadi gelatin ataupun menjadi agar-agar.",
    rating: "5.5",
    harga: "Rp 10000",
  ),
  Restaurant(
    'Es Dawet',
    img: "assets/dawet.jpeg",
    address: "  Es dawet berasal dari Tanah Jawa yaitu Banjarnegara. Perbedaan yang lainnya adalah pada bahan dasar es cendol dulunya terbuat dari sagu aren, tepung beras,tepung hunkwe. Umumnya dibuat hunkwe dan tepung beras saja.tepung tersebut kemudian diberi pewarna makanan hijau atau perasan daun suji; tapi ada juga yang memakai pandan. Setelah mendapat warna yang pas, adonan tepung hunkwe akan dicetak menggunakan alat khusus. Umumnya, berbentuk gelas panjang dengan lubang di bawahnya. Dari sana, bentuk khas lonjong dari cendol berasal.",
    rating: "5.5",
    harga: "Rp 9000",
  ),


];
