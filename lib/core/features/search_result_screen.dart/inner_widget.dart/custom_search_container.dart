import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../../core/app_routes/app_routes.dart';
import '../../../../../../utils/app_colors/app_colors.dart';
import '../../../../../../utils/app_const/app_const.dart';
import '../../../../../../utils/app_images/app_images.dart';
import '../../../../../components/custom_image/custom_image.dart';
import '../../../../../components/custom_netwrok_image/custom_network_image.dart';
import '../../../../../components/custom_text/custom_text.dart';
class CustomSearchContainer extends StatelessWidget {
  const CustomSearchContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: GestureDetector(
        onTap: (){
         Get.toNamed(AppRoutes.professionalProfileScreen);
        },
        child: Container(
          padding: EdgeInsets.all(12.w),
          decoration: BoxDecoration(
              color: AppColors.fullWhite,
              borderRadius: BorderRadius.circular(10.r),
              boxShadow: [
                BoxShadow(
                  color: AppColors.white_50,
                  blurRadius: 4.r,
                  offset: const Offset(0, 2),
                ),
              ]),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          CustomNetworkImage(
                            imageUrl: AppConstants.profileImage,
                            height: 55.h,
                            width: 55.w,
                            boxShape: BoxShape.circle,
                          ),
                          Positioned(
                              bottom: -20,
                              right: -20,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.favorite,
                                  color: AppColors.red,
                                ),
                              )
                          ),
                        ],
                      ),
                      SizedBox(width: 10.w,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CustomText(text: "Mehedi Hasan", fontSize: 16.w, fontWeight: FontWeight.w500,),
                              CustomImage(imageSrc: AppImages.badgeCheck,),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.amber),
                              CustomText(text: "5,0 (1) | 2 Service", fontSize: 12.w, fontWeight: FontWeight.w400,),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  CustomText(text: "\$50/h", fontSize: 20.w, fontWeight: FontWeight.w500,),
                ],
              ),
              SizedBox(height: 16.h,),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                    decoration: BoxDecoration(
                      color: AppColors.primary3,
                      borderRadius: BorderRadius.circular(7.r),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.repeat, color: AppColors.primary,),
                        CustomText(text: "1 has repeated", fontSize: 12.w, fontWeight: FontWeight.w400, color: AppColors.black,),
                      ],
                    ),
                  ),
                  SizedBox(width: 12.w,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                    decoration: BoxDecoration(
                      color: AppColors.primary3,
                      borderRadius: BorderRadius.circular(7.r),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.calendar_month, color: AppColors.primary,),
                        CustomText(text: "Updated Schedule", fontSize: 12.w, fontWeight: FontWeight.w400, color: AppColors.black,),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
