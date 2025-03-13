import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:service_provider_app/core/components/custom_button/custom_button.dart';
import 'package:service_provider_app/core/components/custom_image/custom_image.dart';
import 'package:service_provider_app/core/components/custom_netwrok_image/custom_network_image.dart';
import 'package:service_provider_app/core/components/custom_text/custom_text.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
import 'package:service_provider_app/core/utils/app_const/app_const.dart';
import 'package:service_provider_app/core/utils/app_images/app_images.dart';

import 'inner_widgets/custom_review_row.dart';

class ProfessionalProfileScreen extends StatelessWidget {
  const ProfessionalProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white_50,
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
                          // Get.toNamed(AppRoutes.confirmPayScreen);
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
                  CustomNetworkImage(
                    imageUrl: AppConstants.girlsPhoto,
                    height: 90.h,
                    width: 90.w,
                    boxShape: BoxShape.circle,
                    
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
                    color: AppColors.black,
                    bottom: 20.h,
                  ),
                  ///==================== Container =====================
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: AppColors.white_50,
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(width: 1,color: AppColors.black)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImage(
                          imageSrc: AppImages.massages,
                          height: 44.h,
                          width: 44.w,
                        ),
                        Container(
                          height: 44.h,
                          width: 1.w,
                          color: AppColors.black,
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
                          color: AppColors.black,
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
                          color: AppColors.black,

                        ),
                        CustomImage(
                          imageSrc: AppImages.check,
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
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
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
                            fontSize: 12.w,
                            fontWeight: FontWeight.w400,
                            color: AppColors.black,
                          ))),
                  Divider(
                    thickness: 1,
                    color: AppColors.black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: "Gallery",
                        fontSize: 20.w,
                        fontWeight: FontWeight.w600,
                        color: AppColors.black,
                      ),
                      CustomText(
                        text: "View gallery",
                        fontSize: 14.w,
                        fontWeight: FontWeight.w500,
                        color: AppColors.black,
                      ),
                    ],
                  ),
                  SizedBox(height: 12.h,),
                  Row(
                    children: List.generate(3, (v) {
                      return CustomNetworkImage(
                        imageUrl: AppConstants.girlsPhoto,
                        height: 110.h,
                        width: 110.w,
                        borderRadius: BorderRadius.circular(10.r),
                      );
                    }),
                  ),
                  SizedBox(height: 12,),
                  Divider(
                    thickness: 1,
                    color: AppColors.black,
                  ),
                  CustomText(
                    text: "Some question about me",
                    fontSize: 16.w,
                    fontWeight: FontWeight.w500,
                    color: AppColors.loginColor,
                    textAlign: TextAlign.start,
                  ),
                  CustomText(
                    text:
                        "How much experience do you have as a carer of the elderly?",
                    fontSize: 16.w,
                    fontWeight: FontWeight.w500,
                    color: AppColors.loginColor,
                    maxLines: 2,
                    textAlign: TextAlign.start,
                  ),
                  CustomText(
                    text: "6-10 years of experince",
                    fontSize: 12.w,
                    fontWeight: FontWeight.w400,
                    color: AppColors.loginColor,
                    textAlign: TextAlign.start,
                  ),
                  CustomText(
                    text:
                        "Do you have a qualification, diploma or degree as a health worker?",
                    fontSize: 16.w,
                    fontWeight: FontWeight.w500,
                    color: AppColors.loginColor,
                    maxLines: 2,
                    textAlign: TextAlign.start,
                  ),
                  CustomText(
                    text: "No",
                    fontSize: 12.w,
                    fontWeight: FontWeight.w400,
                    color: AppColors.loginColor,
                    textAlign: TextAlign.start,
                    bottom: 20.h,
                  ),
                  CustomButton(
                    onTap: () {},
                    title: "View all",
                    fillColor: AppColors.white_50,
                    isBorder: true,
                    textColor: AppColors.black,


                    // black: AppColors.black,
                  ),
                  SizedBox(height: 20.h,),
                  Divider(
                    thickness: 1,
                    color: AppColors.black,
                  ),
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
                  Divider(
                    thickness: 1,
                    color: AppColors.black,
                  ),
                  CustomText(
                    text: "Comments",
                    fontSize: 20.w,
                    fontWeight: FontWeight.w600,
                    color: AppColors.loginColor,
                    bottom: 20.h,
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
                                text: "Terek bhai",
                                fontSize: 16.w,
                                fontWeight: FontWeight.w500,
                                color: AppColors.black,
                              ),
                              CustomText(
                                left: 06,
                                text: ".1 day ago",
                                fontSize: 12.w,
                                fontWeight: FontWeight.w400,
                                color: AppColors.black,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.verified,size: 15,),
                              CustomText(text: "Verified service",fontSize: 12.w,fontWeight: FontWeight.w400,color: AppColors.black,),
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
                    color: AppColors.black,
                  ),
                  SizedBox(height: 10.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(text: "\$10/h", fontSize: 20.w,fontWeight: FontWeight.w500,),
                      Flexible(child: CustomButton(onTap: (){}, title: "View availability",height: 50,width: 200,fillColor: AppColors.primary,))
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
