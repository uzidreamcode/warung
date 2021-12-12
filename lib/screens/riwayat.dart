import 'package:flutter/material.dart';
import 'package:flutter_foodybite/util/restaurants.dart';
import 'package:flutter_foodybite/widgets/search_card.dart';
class Riwayat extends StatefulWidget {
  @override
  RiwayatPageState createState() => RiwayatPageState();
}

class RiwayatPageState extends State<Riwayat> {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      backgroundColor: Color(0xFFF4F4F4),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            Padding(
              padding:
              const EdgeInsets.only( top: 70.0,bottom: 45.0,left: 30.0),
              child: Text(
                'Riwayat Pembelian',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(

//              height: 42.0,
                child: Row(
                  children: <Widget>[
                    // SearchCard(),
                    Expanded(
                      child: Card(

                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 16.0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  'Bulan',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14.0),
                                ),
                              ),
                              Icon(Icons.keyboard_arrow_down)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 16.0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  'Kategori',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14.0),
                                ),
                              ),
                              Icon(Icons.keyboard_arrow_down)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: restaurants == null ? 0 : restaurants.length,
                  itemBuilder: (BuildContext context, int index) {
                    final restaurant = restaurants[index];
                    return _historyWidget(restaurant);

                  }),
            ),
          ],
        ),
      ),
    );
  }

  Widget _historyWidget(Restaurant history) {
    return Container(
//      height: 100.0,
      margin: EdgeInsets.only(bottom: 16.0, left: 16.0, right: 16.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.only(right: 16.0),

                child: Image.asset(

                  history.img,
                  height: 120.0,
                  width: 120.0,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        history.title,
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),
                        textAlign: TextAlign.left,
                      ),
                      Text(history.title)
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        history.harga,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(

                            child: Text(
                              ' \n ${history.rating}',
                              textAlign: TextAlign.right,
                            ),
                          ),

                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
