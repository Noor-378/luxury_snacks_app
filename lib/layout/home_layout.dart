import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:luxury_snacks_app/shared/cubit/cubit.dart';
import 'package:luxury_snacks_app/shared/cubit/states.dart';
import 'package:luxury_snacks_app/shared/components/custom_bottom_navigation_bar.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          AppCubit cubit = AppCubit.get(context);
          return Scaffold(
            backgroundColor: Colors.white,
            key: cubit.ScaffoldKey,
            drawer: const Drawer(),
            body: cubit.screens[cubit.currentIndexForButtomNavigationBar],
            bottomNavigationBar: const CustomBottomNavigationBar(),
          );
        },
      ),
    );
  }
}
