import 'package:flutter/material.dart';
import 'package:service_provider_app/core/app_routes/app_routes.dart';
import 'package:service_provider_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:service_provider_app/core/features/service_provider_section/complete_list_screen/widgets/custom_complete_card.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
import 'package:get/get.dart';

class CompleteListScreen extends StatelessWidget {
  const CompleteListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(titleName: "Complete",leftIcon: true,iconColors: AppColors.black,colors: AppColors.black,),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 24,horizontal: 20),
        child: Column(
          children: List.generate(3, (index){
            return CustomCompleteCard(
              singleButton: true,
              backClr: AppColors.lightBlue3,
              backTextClr: AppColors.servicePrimary,
              buttonName: "Complete",
              onTap: (){
               Get.toNamed(AppRoutes.completeProfessionalScreen);
              },
            );
          }),
        ),
      )
    );
  }
}
