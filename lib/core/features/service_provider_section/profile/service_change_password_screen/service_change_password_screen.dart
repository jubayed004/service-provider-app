import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
import '../../../../components/custom_button/custom_button.dart';
import '../../../../components/custom_from_card/custom_from_card.dart';
import '../../../../components/custom_royel_appbar/custom_royel_appbar.dart';
class ServiceChangePasswordScreen extends StatelessWidget {
  const ServiceChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        titleName: "Change Password",
        iconColors: Colors.black,
        colors: Colors.black,
        leftIcon: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            CustomFormCard(
                title: "Old Password",
                isPassword: true,
                hintText: "Enter your old password",
                controller: TextEditingController()
            ),
            CustomFormCard(
                title: "New Password",
                isPassword: true,
                hintText: "Enter your new password",
                controller: TextEditingController()
            ),
            CustomFormCard(
                title: "Confirm Password",
                isPassword: true,
                hintText: "Enter your confirm password",
                controller: TextEditingController()
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
        child: CustomButton(onTap: (){
          Get.back();
        }, title: "Change Password",
        fillColor: AppColors.servicePrimary,
        ),
      ),
    );
  }
}
