import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:service_provider_app/core/components/custom_button/custom_button.dart';

import 'package:service_provider_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:service_provider_app/core/components/custom_text/custom_text.dart';
import 'package:service_provider_app/core/features/user_section/search_result_screen.dart/palliative_care_screen/inner_widgets/custom_checkbox_text.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';


class ProfessionalFilterScreen extends StatefulWidget {
  const ProfessionalFilterScreen({super.key});

  @override
  State<ProfessionalFilterScreen> createState() =>
      _ProfessionalFilterScreenState();
}

class _ProfessionalFilterScreenState extends State<ProfessionalFilterScreen> {
  int _value = 6;
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
              Row(
                children: [
                  CustomText(
                    text: "Price/hour",
                    fontSize: 20.w,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black,
                    right: 8.w,
                  ),
                  CustomText(
                    text: "\$9/h-Maximum",
                    fontSize: 20.w,
                    fontWeight: FontWeight.w500,
                    color: AppColors.blue,
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Slider(
                value: _value.toDouble(),
                min: 1.0,
                max: 20.0,
                divisions: 10,
                activeColor: AppColors.servicePrimary,
                inactiveColor: AppColors.textColor,
                label: "Set Value",
                onChanged: (double newValue) {
                  setState(() {
                    _value = newValue.round();
                  });
                },
                semanticFormatterCallback: (double newValue) {
                  return "${newValue.round()} dollars";
                },
              ),
              SizedBox(
                height: 20.h,
              ),
              Divider(
                thickness: .3,
                color: AppColors.textColor,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: CustomText(
                  text: "Other required tasks",
                  fontSize: 20.w,
                  fontWeight: FontWeight.w500,
                  top: 10.h,
                  bottom: 10.h,
                ),
              ),
              Column(
                children: List.generate(4, (index) {
                  return CustomCheckboxText(
                    text: "0-2 years of experience",
                  );
                }),
              ),
              Divider(
                thickness: .3,
                color: AppColors.textColor,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: "Driving licence",
                        fontSize: 18.w,
                        fontWeight: FontWeight.w500,
                        color: AppColors.black,
                      ),
                      Switch(value: false, onChanged: (value) {})
                    ],
                  ),
                  CustomText(
                    text:
                        "Only show caregivers with a qualification, diploma or degree as health personal",
                    fontSize: 14.w,
                    fontWeight: FontWeight.w400,
                    color: AppColors.blackText,
                    textAlign: TextAlign.start,
                    maxLines: 2,
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: "Palliative care",
                        fontSize: 18.w,
                        fontWeight: FontWeight.w500,
                        color: AppColors.black,
                      ),
                      Switch(value: false, onChanged: (value) {})
                    ],
                  ),
                  CustomText(
                    text:
                        "Only show professional specialising in palliative care",
                    fontSize: 14.w,
                    fontWeight: FontWeight.w400,
                    color: AppColors.blackText,
                    maxLines: 2,
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              CustomButton(onTap: (){
                Get.back();
              },title: "Save",fillColor: AppColors.servicePrimary,)
            ],
          ),
        ),
      ),
    );
  }
}
