import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/Pages/reels.dart';
import 'package:instagram_clone/Pages/shop.dart';
import 'package:instagram_clone/Pages/home.dart';
import 'package:instagram_clone/Pages/search.dart';
import 'package:instagram_clone/pages/profile.dart';
import 'package:instagram_clone/Pages/splashscreen.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  List screens = [
    Home(),
    Search(),
    Reels(),
    Shop(),
    Profile()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            currentIndex: currentIndex,
            onTap: (index) => setState(()=> currentIndex=index),
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(label:'Home',icon: SvgPicture.asset('assets/icons/home.svg')),
              BottomNavigationBarItem(label:'Search',icon: SvgPicture.asset('assets/icons/search.svg')),
              BottomNavigationBarItem(label:'Reels',icon: Icon(Icons.video_call , size: 35.0,color: Colors.black)),
              BottomNavigationBarItem(label:'Shop',icon: Icon(Icons.shopping_bag_outlined , size: 30.0,color: Colors.black)),
              BottomNavigationBarItem(
                  label:"Profile",
              icon: CircleAvatar(
                    radius: 15.0,
                    backgroundColor: Colors.grey)
              )
            ])
    );
  }
}
