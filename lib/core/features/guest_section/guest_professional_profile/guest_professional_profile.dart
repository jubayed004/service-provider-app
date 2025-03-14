import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:service_provider_app/core/app_routes/app_routes.dart';
import 'package:service_provider_app/core/components/custom_button/custom_button.dart';
import 'package:service_provider_app/core/components/custom_image/custom_image.dart';
import 'package:service_provider_app/core/components/custom_netwrok_image/custom_network_image.dart';
import 'package:service_provider_app/core/features/user_section/search_result_screen.dart/professional_profile_screen/inner_widgets/custom_review_row.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
import 'package:service_provider_app/core/utils/app_const/app_const.dart';
import 'package:service_provider_app/core/utils/app_images/app_images.dart';

import '../../../components/custom_text/custom_text.dart';


class GuestProfessionalProfile extends StatelessWidget {
  const GuestProfessionalProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BackButton(
                  color: AppColors.black,
                ),
                CustomText(
                  text: "Profile",
                  fontSize: 20.w,
                  fontWeight: FontWeight.w500,
                  color: AppColors.black,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.ios_share_outlined,
                      color: AppColors.black,
                    ),
                    IconButton(
                        onPressed: () {
                          Get.toNamed(AppRoutes.confirmPayScreen);
                        },
                        icon: Icon(
                          Icons.favorite_border,
                          color: AppColors.black,
                        )),
                  ],
                )
              ],
            ),
            Expanded(
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      Container(
                        height: 90.h,
                        width: 90.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: CustomNetworkImage(
                          imageUrl: AppConstants.girlsPhoto,
                          height: 90.h,
                          width: 90.w,
                          boxShape: BoxShape.circle,
                        ),
                      ),
                      CustomText(
                        text: "John Doe",
                        fontSize: 20.w,
                        fontWeight: FontWeight.w500,
                        color: AppColors.black,
                        top: 10.h,
                      ),
                      CustomText(
                        text: "Elderly care",
                        fontSize: 14.w,
                        fontWeight: FontWeight.w400,
                        color: AppColors.textColor,
                        bottom: 20.h,
                      ),
                      //==================== Container =====================
                      Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(17.r),
                          border: Border.all(color: AppColors.textColor,width: .8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomImage(
                              imageSrc: AppImages.chatIcon,
                              height: 44.h,
                              width: 44.w,
                            ),
                            Container(
                              height: 44.h,
                              width: 1.w,
                              color: AppColors.textColor,
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    CustomText(
                                      text: "5",
                                      fontSize: 16.w,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.black,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    )
                                  ],
                                ),
                                CustomText(
                                  text: "1 reviews",
                                  fontSize: 12.w,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.black,
                                ),
                              ],
                            ),
                            Container(
                              height: 44.h,
                              width: 1.w,
                              color: AppColors.textColor,
                            ),
                            Column(
                              children: [
                                CustomText(
                                  text: "2",
                                  fontSize: 18.w,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.black,
                                ),
                                CustomText(
                                  text: "Service",
                                  fontSize: 12.w,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.black,
                                ),
                              ],
                            ),
                            Container(
                              height: 44.h,
                              width: 1.w,
                              color: AppColors.textColor,
                            ),
                            CustomImage(
                              imageSrc: AppImages.verifai,
                              height: 44.h,
                              width: 44.w,
                            )
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: CustomText(
                          text: "About me",
                          fontSize: 20.w,
                          top: 10.0.h,
                          bottom: 10.h,
                          fontWeight: FontWeight.w600,
                          color: AppColors.naviBlue,
                        ),
                      ),
                      CustomText(
                        text:
                        "Welcome to NB Sujon, where quality meets convenience! With a passion for excellence and a commitment to customer satisfaction, we specialize in delivering top-notch service.",
                        fontSize: 12.w,
                        fontWeight: FontWeight.w400,
                        color: AppColors.black,
                        maxLines: 4,
                        textAlign: TextAlign.start,
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: TextButton(
                              onPressed: () {},
                              child: CustomText(
                                text: "+View more",
                                fontSize: 14.w,
                                fontWeight: FontWeight.w500,
                                color: AppColors.black,
                                bottom: 10.h,
                              ))),
                      Divider(thickness: .3,color: AppColors.black_03,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            top: 10.h,
                            text: "Gallery",
                            fontSize: 20.w,
                            fontWeight: FontWeight.w600,
                            color: AppColors.naviBlue,
                            bottom: 15.h,
                          ),
                          CustomText(
                            text: "View gallery",
                            fontSize: 14.w,
                            fontWeight: FontWeight.w500,
                            color: AppColors.black,
                            bottom: 15.h,
                          ),
                        ],
                      ),
                      Row(
                        children: List.generate(1, (v) {
                          return CustomNetworkImage(
                            imageUrl: AppConstants.girlsPhoto,
                            height: 110.h,
                            width: 110.w,
                            borderRadius: BorderRadius.circular(10.r),
                          );
                        }),
                      ),
                      Divider(thickness: .3,color: AppColors.black_03,),
                      CustomText(
                        top: 20.h,
                        text: "Some question about me",
                        fontSize: 16.w,
                        fontWeight: FontWeight.w500,
                        color: AppColors.primary2,
                        textAlign: TextAlign.start,
                        bottom: 10.h,
                      ),
                      CustomText(
                        text:
                        "How much experience do you have as a carer of the elderly?",
                        fontSize: 16.w,
                        fontWeight: FontWeight.w500,
                        color: AppColors.primary2,
                        maxLines: 2,
                        textAlign: TextAlign.start,
                        bottom: 6.h,
                      ),
                      CustomText(
                        text: "6-10 years of experince",
                        fontSize: 12.w,
                        fontWeight: FontWeight.w400,
                        color: AppColors.black,
                        textAlign: TextAlign.start,
                        bottom: 10,
                      ),
                      CustomText(
                        text:
                        "Do you have a qualification, diploma or degree as a health worker?",
                        fontSize: 16.w,
                        fontWeight: FontWeight.w500,
                        color: AppColors.primary2,
                        maxLines: 2,
                        textAlign: TextAlign.start,
                        bottom: 10.h,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                       // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.check, color: AppColors.primary,size: 25,),
                          CustomText(
                            text: "No",
                            fontSize: 12.w,
                            left: 8.w,
                            fontWeight: FontWeight.w400,
                            color: AppColors.black,
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                      SizedBox(height: 15.h,),
                      CustomButton(
                        onTap: () {},
                        title: "View all",
                        fillColor: AppColors.white,
                        isBorder: true,
                        borderWidth: 1,
                        textColor: AppColors.black,
                      ),
                      SizedBox(height: 8.h,),
                      Divider(thickness: .3,color: AppColors.black_03,),
                      SizedBox(height: 20.h,),
                      Row(
                        children: [
                          CustomText(
                            text: "5.0",
                            fontSize: 48.w,
                            fontWeight: FontWeight.w500,
                            color: AppColors.black,
                            right: 8.w,
                          ),
                          Icon(Icons.star, size: 40,color: Colors.amber,),
                          SizedBox(width: 16.w,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                text: "Outstanding",
                                fontSize: 18.w,
                                fontWeight: FontWeight.w500,
                                color: AppColors.black,
                              ),
                              CustomText(
                                text: "(3 ratings)",
                                fontSize: 12.w,
                                fontWeight: FontWeight.w400,
                                color: AppColors.black,
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 10.h,),
                      CustomReviewRow(),
                      CustomReviewRow(),
                      CustomReviewRow(),
                      CustomReviewRow(),
                      CustomReviewRow(),
                      CustomReviewRow(),
                      SizedBox(height: 8.h,),
                      Divider(thickness: .3,color: AppColors.black_03,),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: CustomText(
                          top: 10.h,
                          text: "Comments",
                          fontSize: 20.w,
                          fontWeight: FontWeight.w600,
                          color: AppColors.primary2,
                          bottom: 10.h,
                        ),
                      ),
                      Row(
                        children: [
                          CustomNetworkImage(imageUrl: AppConstants.girlsPhoto, height: 50.h, width: 50.w, boxShape: BoxShape.circle,),
                          SizedBox(width: 10.w,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  CustomText(
                                    text: "Sujon",
                                    fontSize: 16.w,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.black,
                                  ),
                                  CustomText(
                                    text: "1 day ago",
                                    fontSize: 12.w,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.black,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.verified,size: 15,color: AppColors.textColor,),
                                  CustomText(text: "Verified",fontSize: 12.w,fontWeight: FontWeight.w400,color: AppColors.textColor,),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      CustomText(
                        text: "The service was outstanding! The provider was professional, arrived on time, and completed the job perfectly.",
                        fontSize: 12.w,
                        fontWeight: FontWeight.w400,
                        color: AppColors.black,
                        bottom: 20.h,
                        textAlign: TextAlign.start,
                        maxLines: 3,
                        top: 10.h,
                      ),
                      Divider(
                        thickness: 1,
                        color: AppColors.textColor,
                      ),
                      SizedBox(height: 10.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(text: "\$10/h", fontSize: 20.w,fontWeight: FontWeight.w500,color: AppColors.naviBlue,),
                          Flexible(child: CustomButton(onTap: (){
                          //  Get.toNamed(AppRoutes.welcomeScreen);
                          }, title: "View availability",height: 50,width: 200,fillColor: AppColors.primary,))
                        ],
                      ),
                      SizedBox(height: 50.h,),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
