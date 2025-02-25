import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:luxury_snacks_app/layout/home_layout.dart';
import 'package:luxury_snacks_app/shared/cubit/states.dart';
import 'package:luxury_snacks_app/moduls/cart_screen/cart_screen.dart';
import 'package:luxury_snacks_app/moduls/home_screen/home_screen.dart';
import 'package:luxury_snacks_app/moduls/profile_screen/profile_screen.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(InitialAppState());

// object
  static AppCubit get(BuildContext context) => BlocProvider.of(context);

///////////////key for the Scaffold\\\\\\\\\\\\\\
  GlobalKey<ScaffoldState> ScaffoldKey = GlobalKey();

///////////////change body\\\\\\\\\\\\\\\\\\\\\\\\
  List<Widget> screens = const [
    HomeScreen(),
    CartScreen(),
    ProfileScreen(),
  ];

  /////////////////change the index for the BottomNavigationBar\\\\\\\\\\\\\\\\\\\\\
  int currentIndexForButtomNavigationBar = 0;

  void currentIndex(int index) {
    currentIndexForButtomNavigationBar = index;
    emit(IndexChangeState());
  }

  //////////////////////Navigate to home screen\\\\\\\\\\\\\\\\\\\\\
  void navigateToHomeScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const HomeLayout(),
      ),
    );
    emit(NavigatorToHomeScreenState());
  }
}
