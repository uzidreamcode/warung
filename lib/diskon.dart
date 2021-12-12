import 'package:flutter/material.dart';
import 'package:flutter_foodybite/util/restaurants.dart';
import 'package:flutter_foodybite/widgets/search_card.dart';
import 'package:flutter_foodybite/widgets/trending_item.dart';
import 'package:flutter_foodybite/detail.dart';

class produk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 0,
          horizontal: 10.0,
        ),
        child: ListView(
          children: <Widget>[
            SearchCard(),
            SizedBox(height: 10.0),
            ListView.builder(
              primary: false,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: restaurants == null ? 0 : restaurants.length,
              itemBuilder: (BuildContext context, int index) {
                final restaurant = restaurants[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return Detail(restaurant: restaurant);
                        },
                      ),
                    );
                  },

                  child:Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: TrendingItem(
                      img: restaurant.img,
                      title: restaurant.title,
                      address: restaurant.address,
                      rating: restaurant.rating,



                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}
