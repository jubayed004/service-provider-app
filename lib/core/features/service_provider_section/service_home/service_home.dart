import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:service_provider_app/core/components/custom_image/custom_image.dart';
import 'package:service_provider_app/core/components/custom_text/custom_text.dart';
import 'package:service_provider_app/core/features/service_provider_section/complete_list_screen/widgets/custom_complete_card.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
import 'package:service_provider_app/core/utils/app_images/app_images.dart';
import '../../../../core/app_routes/app_routes.dart';
import '../../../components/custom_nav_bar/service_navbar.dart';
import 'controller/service_home_controller.dart';

class ServiceHomeScreen extends StatelessWidget {
  ServiceHomeScreen({super.key});

  final requestProController =Get.find<ServiceHomeController>();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 70),
        child: Obx(
       (){
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(text: "Request", fontSize: 32.w,fontWeight: FontWeight.w600,),
                    GestureDetector(
                      onTap: (){
                        Get.toNamed(AppRoutes.completeListScreen);
                      },
                        child: CustomImage(imageSrc: AppImages.checkBoxicon))
                  ],
                ),
                SizedBox(height: 20.h,),
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      Container(
                        height: 48.h,
                        width: screenWidth,
                        decoration: BoxDecoration(
                          color: AppColors.fullWhite,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 3), // Added slight padding
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(
                              requestProController.requestTypeList.length,
                                  (index) {
                                return Expanded( // Ensures each item fits within available space
                                  child: GestureDetector(
                                    onTap: () {
                                      requestProController.currentIndex.value = index; // Fixing selection logic
                                      requestProController.update();
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 48.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        color: requestProController.currentIndex.value == index
                                            ? AppColors.black_09
                                            : AppColors.fullWhite, // Fixed invalid .withValues()
                                      ),
                                      child: CustomText(
                                        text: requestProController.requestTypeList[index],
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.black,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h,),
                      if(requestProController.currentIndex.value==0)
                        Column(
                          children: List.generate(3, (index){
                            return CustomCompleteCard(
                              showRowButton: true,
                              onTap: (){
                                Get.toNamed(AppRoutes.completeProfessionalScreen);
                              },
                            );
                          }),
                        ),
                      if(requestProController.currentIndex.value==1)
                        Column(
                          children: List.generate(3, (index){
                            return CustomCompleteCard(
                              singleButton: true,
                              buttonName: "Ongoing",
                              onTap: (){
                                Get.toNamed(AppRoutes.completeProfessionalScreen);
                              },
                            );
                          }),
                        ),
                      if(requestProController.currentIndex.value==2)
                        Column(
                          children: List.generate(3, (index){
                            return CustomCompleteCard(
                              showPrice: true,
                              singleButton: true,
                              backClr: AppColors.lightRed,
                              backTextClr: AppColors.red,
                              buttonName: "Cancel",
                              onTap: (){
                                Get.toNamed(AppRoutes.completeProfessionalScreen);
                              },
                            );
                          }),
                        )
                    ],
                  ),
                ),
              ],
            );
          }
        ),
      ),
      bottomNavigationBar: ServiceNavbar(currentIndex: 2),
    );
  }
}
