import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service_provider_app/core/components/custom_from_card/custom_from_card.dart';
import 'package:service_provider_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import '../../../../components/custom_button/custom_button.dart';

class AddAddressScreen extends StatelessWidget {
  const AddAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        titleName: "Address",
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            CustomFormCard(
                title: "Name",
                controller: TextEditingController()
            ),
            CustomFormCard(
                title: "Address",
                controller: TextEditingController()
            ),
            CustomFormCard(
                title: "City",
                controller: TextEditingController()
            ),
            CustomFormCard(
                title: "Country",
                controller: TextEditingController()
            ),
            CustomFormCard(
                title: "Phone Number",
                controller: TextEditingController()
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
        child: CustomButton(onTap: (){
         Get.back();
        }, title: "Save",),
      ),
    );
  }
}
