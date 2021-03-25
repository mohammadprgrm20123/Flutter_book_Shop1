

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_booki_shop/views/favorite/favorite.dart';
import 'package:get/get.dart';

class CustomBtnNavigation {


  FloatingActionButton floatingActionButton() {
    return FloatingActionButton(
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
              Get.to(Favorite());
            }break;

            case 2:{

            }break;

            case 3:{

            }break;

          }
          print(index.toString());
        });
  }

}