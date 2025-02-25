import 'package:flutter/material.dart';
import 'package:luxury_snacks_app/moduls/home_screen/first_part.dart';
import 'package:luxury_snacks_app/moduls/home_screen/second_part.dart';
import 'package:luxury_snacks_app/moduls/home_screen/third_part.dart';
import 'package:luxury_snacks_app/shared/constants/const_text.dart';
import 'package:luxury_snacks_app/shared/styles/custom_text_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustomTextStyle(
                    text: "Menu",
                    fontSize: 30,
                  ),
                  Spacer(),
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(image),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.black12,
                  prefixIcon: Icon(
                    Icons.search,
                    size: 30,
                  ),
                  hintText: "Search",
                  hintStyle: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              FirstPart(),
              SizedBox(
                height: 20,
              ),
              CustomTextStyle(
                text: "Promotions",
                fontSize: 23,
              ),
              SizedBox(
                height: 15,
              ),
              SecondPart(),
              SizedBox(
                height: 17,
              ),
              CustomTextStyle(
                text: "Popular",
                fontSize: 23,
              ),
              SizedBox(
                height: 17,
              ),
              ThirdPart(),
            ],
          ),
        ),
      ),
    );
  }
}
