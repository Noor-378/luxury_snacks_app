import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:luxury_snacks_app/shared/cubit/cubit.dart';
import 'package:luxury_snacks_app/shared/cubit/states.dart';
import 'package:luxury_snacks_app/shared/styles/colors.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return BottomNavigationBar(
          currentIndex:
              AppCubit.get(context).currentIndexForButtomNavigationBar,
          elevation: 0,
          type: BottomNavigationBarType.shifting,
          selectedItemColor: mainColor,
          unselectedItemColor: Colors.black45,
          onTap: (index) {
            AppCubit.get(context).currentIndex(index);
          },
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(
                Icons.home_outlined,
              ),
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              label: "Cart",
              icon: Icon(
                Icons.shopping_cart_outlined,
              ),
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: Icon(
                Icons.account_circle_outlined,
              ),
              backgroundColor: Colors.white,
            ),
          ],
        );
      },
    );
  }
}
