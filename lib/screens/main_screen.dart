
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_foodybite/screens/home.dart';
import 'package:flutter_foodybite/screens/riwayat.dart';
import 'package:flutter_foodybite/diskon.dart';
import 'package:flutter_foodybite/profil.dart';

class MainScreen  extends StatefulWidget {
  @override
  _MainScreenState  createState() => _MainScreenState ();
}

class _MainScreenState  extends State<MainScreen> {
  // Properties & Variables needed

  int currentTab = 0; // to keep track of active tab index
  final List<Widget> screens = [

    Home(),
    Riwayat(),
    produk(),

  ]; // to store nested tabs
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Home(); // Our first view in viewport

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor : Color(0xff5f0eb3),
        // child: Lottie.asset('../assets/plus.json'),
        child: Icon(Icons.add_shopping_cart_outlined ),
        onPressed: () {

        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    padding: EdgeInsets.only(right: -40),
                    // minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            Home(); // if user taps on this dashboard tab will be active
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.home,
                          color: currentTab == 0 ? Color(0xff5f0eb3) : Colors.grey,
                        ),
                        // Text(
                        //   'Beranda',
                        //   style: TextStyle(
                        //     color: currentTab == 0 ? Color(0xff5f0eb3) : Colors.grey,
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    padding: EdgeInsets.only(right: -100),
                    // minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            produk(); // if user taps on this dashboard tab will be active
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.fastfood,
                          color: currentTab == 1 ? Color(0xff5f0eb3) : Colors.grey,
                        ),
                        // Text(
                        //   'Riwayat',
                        //   style: TextStyle(
                        //     color: currentTab == 1 ? Colors.blue : Colors.grey,
                        //   ),
                        // ),
                      ],
                    ),
                  )
                ],
              ),

              // Right Tab bar icons

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    padding: EdgeInsets.only(left: -100),
                    // minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            Riwayat(); // if user taps on this dashboard tab will be active
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(

                          Icons.access_time,
                          color: currentTab == 2 ? Color(0xff5f0eb3) : Colors.grey,
                        ),
                        // Text(
                        //   'Pengaturan',
                        //   style: TextStyle(
                        //     color: currentTab == 2 ? Colors.blue : Colors.grey,
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    padding: EdgeInsets.only(right: -10),
                    // minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            Profile2(); // if user taps on this dashboard tab will be active
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.account_circle,
                          color: currentTab == 3 ? Color(0xff5f0eb3)   : Colors.grey,
                        ),
                        // Text(
                        //   'Profil',
                        //   style: TextStyle(
                        //     color: currentTab == 3 ? Colors.blue : Colors.grey,
                        //   ),
                        // ),
                      ],
                    ),
                  )
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
