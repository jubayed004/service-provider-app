import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:service_provider_app/core/app_routes/app_routes.dart';
import 'package:service_provider_app/core/components/custom_button/custom_button.dart';
import 'package:service_provider_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:service_provider_app/core/components/custom_text/custom_text.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';


import 'widget/work_time_container.dart';

class WorkScheduleScreen extends StatelessWidget {
  const WorkScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: "Work schedule",
                fontSize: 24.w,
                fontWeight: FontWeight.w600,
                color: AppColors.primary2,
              ),
              CustomText(
                text: "When are you available to offer your services?",
                fontSize: 14.w,
                fontWeight: FontWeight.w400,
                color: AppColors.blackText,
                bottom: 20,
              ),
              Column(
                children: List.generate(7, (value){return WorkTimeContainer();}),
              ),
              SizedBox(height: 20.h,),
              CustomButton(onTap: (){
                Get.toNamed(AppRoutes.servicePalliativeCare);
              }, title: "Confirm",fillColor: AppColors.servicePrimary,),
              SizedBox(height: 50.h,),
            ],
          ),
        ),
      ),
    );
  }
}
