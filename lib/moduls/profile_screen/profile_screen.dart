import 'package:flutter/material.dart';
import 'package:luxury_snacks_app/moduls/profile_screen/items.dart';
import 'package:luxury_snacks_app/shared/styles/colors.dart';
import 'package:luxury_snacks_app/shared/styles/custom_text_style.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.black38,
            ),
            const CustomTextStyle(
              text: "John Doe",
              fontSize: 25,
            ),
            const SizedBox(
              height: 5,
            ),
            const CustomTextStyle(
              text: "john.doe@example.com",
              fontSize: 17,
              color: gColor,
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: mainColor,
                fixedSize: const Size(125, 40),
                shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              onPressed: () {},
              child: const CustomTextStyle(
                text: "Edit Profile",
                color: Colors.black45,
                fontSize: 17,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Row(
              children: [
                CustomTextStyle(
                  text: "Order History",
                  fontSize: 20,
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Items(
              itemText: "Previous Orders",
              icon: Icons.list_alt_rounded,
              onPressed: () {},
            ),
            Items(
              itemText: "Payment Methods",
              icon: Icons.payment,
              onPressed: () {},
            ),
            Items(
              itemText: "Settings",
              icon: Icons.settings_outlined,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
