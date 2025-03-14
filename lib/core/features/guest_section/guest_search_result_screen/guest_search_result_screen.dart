import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:service_provider_app/core/app_routes/app_routes.dart';
import 'package:service_provider_app/core/components/custom_image/custom_image.dart';
import 'package:service_provider_app/core/components/custom_text/custom_text.dart';
import 'package:service_provider_app/core/features/user_section/search_result_screen.dart/inner_widget.dart/custom_search_container.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
import 'package:service_provider_app/core/utils/app_images/app_images.dart';


class GuestSearchResultScreen extends StatelessWidget {
  const GuestSearchResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40.h,
            ),
            ////============== AppBar ==========
            Row(
              children: [
                Expanded(
                  child: Card(
                    shadowColor: AppColors.appWhite,
                    color: Colors.transparent,
                    child: Container(
                      height: 45.h,
                      //  width: MediaQuery.sizeOf(context).width,
                      decoration: BoxDecoration(
                          color: AppColors.appWhite,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.r))),
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                Get.back();
                              },
                              icon: Icon(Icons.arrow_back, color: AppColors.primary,),),
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
                Container(
                  height: 40.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(90),
                    border: Border.all(color: AppColors.black_03,width: 1)
                  ),child: Icon(
                  Icons.favorite_outline,
                  color: AppColors.black,
                  size: 25.w,
                ),
                )
              ],
            ),
            SizedBox(height: 12.h,),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                  decoration: BoxDecoration(
                    color: AppColors.primary3,
                    border: Border.all(color: AppColors.primary),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.calendar_today_outlined, color: AppColors.black,size: 18,),
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
                      color: AppColors.fullWhite,
                      border: Border.all(color: AppColors.textColor),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Row(
                      children: [
                        CustomImage(imageSrc: AppImages.adjustments),
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
                      imageSrc: AppImages.informationCircle,
                      imageColor: AppColors.primary,
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
            SizedBox(height: 4.h),
           Column(
             children: List.generate(3, (value){
               return CustomSearchContainer(
                 // onTap: (){
                 //   Get.toNamed(AppRoutes.guestProfessionalProfile);
                 // },
               );
             }),
           )
          ],
        ),
      ),
    );
  }
}
