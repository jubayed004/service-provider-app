import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:service_provider_app/core/app_routes/app_routes.dart';
import 'package:service_provider_app/core/components/custom_image/custom_image.dart';
import 'package:service_provider_app/core/components/custom_text/custom_text.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
import 'package:service_provider_app/core/utils/app_images/app_images.dart';

import 'inner_widget.dart/custom_search_container.dart';

class SearchResultScreen extends StatelessWidget {
  const SearchResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white_50,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40.h,
            ),
            ///============== AppBar ==========///
            Row(
              children: [
                Expanded(
                  child: Card(
                    shadowColor: AppColors.white,
                    color: Colors.transparent,
                    child: Container(
                      height: 45.h,
                      //  width: MediaQuery.sizeOf(context).width,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.r))),
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                Get.back();
                              },
                              icon: Icon(Icons.arrow_back)),
                          SizedBox(
                            width: 10.w,
                          ),
                          CustomText(
                            text: 'Elderly care',
                            fontSize: 14.w,
                            fontWeight: FontWeight.w600,
                            color: AppColors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                CircleAvatar(
                  radius: 27.r,
                  backgroundColor: AppColors.white,
                  child: Icon(
                    Icons.favorite_outline,
                    color: Colors.red,
                    size: 25.w,
                  ),
                ),
              ],
            ),
            SizedBox(height: 12.h,),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                  decoration: BoxDecoration(
                    color: AppColors.appColor_01,
                    border: Border.all(color: AppColors.primary),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.calendar_month, color: AppColors.primary,),
                      CustomText(text: "When?", fontSize: 16.w, fontWeight: FontWeight.w400, color: AppColors.black,left: 6.w,),
                    ],
                  ),
                ),
                SizedBox(width: 16.w,),
                GestureDetector(
                  onTap: (){
                    Get.toNamed(AppRoutes.palliativeCareScreen);
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      border: Border.all(color: AppColors.black),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.checklist_sharp, color: AppColors.black,),
                        CustomText(text: "Filters?", fontSize: 16.w, fontWeight: FontWeight.w400, color: AppColors.black,left: 6.w,),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            // Question section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CustomImage(
                      imageSrc: AppImages.icon,
                      imageColor: AppColors.primary,
                      sizeWidth: 18.w,
                    ),
                    CustomText(
                      text: "How does the service work?",
                      fontSize: 14.w,
                      fontWeight: FontWeight.w400,
                      left: 6.w,
                    ),
                  ],
                ),
                IconButton(
                  icon: const Icon(
                    Icons.arrow_forward,
                    color: AppColors.primary,
                  ),
                  onPressed: () {
                    // Handle the arrow forward action
                  },
                ),
              ],
            ),
            SizedBox(height: 20.h),
           Column(
             children: List.generate(3, (value){
               return CustomSearchContainer();
             }),
           )
          ],
        ),
      ),
    );
  }
}
