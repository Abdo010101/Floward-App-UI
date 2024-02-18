import 'package:bloc/bloc.dart';
import 'package:floward/layout/home_layout/cubit/states.dart';
import 'package:floward/modules/floward_app/cart_screen.dart';
import 'package:floward/modules/floward_app/category_Screen.dart';
import 'package:floward/modules/floward_app/home_screen.dart';
import 'package:floward/modules/floward_app/profile_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FlowardAppCubit extends Cubit<FlowardAppStates>
{

  FlowardAppCubit():super(FlowardAppInitalState());

  static FlowardAppCubit get(context) => BlocProvider.of(context);

  List<Widget> myScreens=
  [
    HomeScreen(),
    CategoryScreen(),
    CartScreen(),
    ProfileScreen(),
  ];

  int currentIndex = 0;
  void changeBottomNav(int index)
  {
    currentIndex = index ;
    emit(FlowardAppChangeBottomNavState());
  }



  List<BottomNavigationBarItem> bottomNavList =
  [
    BottomNavigationBarItem(icon: Icon(Icons.home),label: 'HOME',),
    BottomNavigationBarItem(icon: Icon(Icons.category_outlined),label: 'CATALOGUE'),
    BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: 'CART'),
    BottomNavigationBarItem(icon: Icon(Icons.person),label: 'MY PROFILE'),
  ];

}