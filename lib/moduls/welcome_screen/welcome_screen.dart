import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:luxury_snacks_app/shared/cubit/cubit.dart';
import 'package:luxury_snacks_app/shared/cubit/states.dart';
import 'package:luxury_snacks_app/shared/styles/colors.dart';
import 'package:luxury_snacks_app/shared/styles/custom_text_style.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            body: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    mainColor,
                    gColor,
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Image(
                    height: 500,
                    image: AssetImage(
                      "assets/images/welcome.png",
                    ),
                  ),
                  const CustomTextStyle(
                    text: "Enjoy Your Food",
                    fontSize: 35,
                    color: Colors.white,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: const Size(150, 40),
                      shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    onPressed: () =>
                        AppCubit.get(context).navigateToHomeScreen(context),
                    child: const CustomTextStyle(
                      text: "Get Started",
                      fontSize: 17,
                      color: mainColor,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
