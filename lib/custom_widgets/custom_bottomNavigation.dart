

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_booki_shop/views/favorite/favorite.dart';
import 'package:flutter_booki_shop/views/login/login.dart';
import 'package:flutter_booki_shop/views/proflie/profile.dart';
import 'package:flutter_booki_shop/views/user_home/user_home.dart';
import 'file:///D:/flutter_booki_shop/flutter_booki_shop/lib/views/search/search.dart';
import 'package:get/get.dart';

class CustomBtnNavigation {


  FloatingActionButton floatingActionButton() {
    return FloatingActionButton(
      onPressed: (){
      print(Get.currentRoute.toString());
      if(Get.currentRoute!="/UserHome")
          Get.offAll(UserHome());
      },
      child: Icon(Icons.home_outlined),
    );
  }
  AnimatedBottomNavigationBar bottomNavigationBar() {
    return AnimatedBottomNavigationBar(
        icons: [
          Icons.shopping_bag_outlined,
          Icons.favorite_border,
          Icons.search,
          Icons.account_circle_outlined,
        ],
        elevation: 20.0,
        backgroundColor: Colors.white,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        splashRadius: 10.0,
        activeColor: Colors.blue,
        onTap: (int index) {
          switch(index){
            case 0:{

            }break;

            case 1:{
              Get.offAll(()=>Favorite());
            }break;

            case 2:{
              Get.offAll(()=>Search());
            }break;

            case 3:{
              Get.to(()=>Profile());
            }break;

          }
        });
  }

}