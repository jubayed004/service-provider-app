import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:service_provider_app/core/app_routes/app_routes.dart';
import 'package:service_provider_app/core/components/custom_button/custom_button.dart';
import 'package:service_provider_app/core/components/custom_image/custom_image.dart';
import 'package:service_provider_app/core/components/custom_text/custom_text.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
import 'package:service_provider_app/core/utils/app_images/app_images.dart';


class OnbroadingScreen extends StatefulWidget {
  const OnbroadingScreen({super.key});

  @override
  State<OnbroadingScreen> createState() => _OnbroadingScreenState();
}

class _OnbroadingScreenState extends State<OnbroadingScreen> {
  int currentPage = 0;
  List<String> images = [
    AppImages.onbroadingOne,
    AppImages.onnroadingTwo,
    AppImages.onbroadingThree
  ];

  List<String> titles = [
    'Offer your at-\nhome services',
    'Perform the services',
    'Earn money',
  ];

  List<String> discreptions = [
    'Let us know where you can travel to, when you’re available, and what service you want to offer. ',
    'Complete the service for which you have been booked. ',
    'Receive the payment for the services you’ve provided in your account!',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {},
                  child: CustomText(
                    text: "Exit",
                    fontSize: 20.w,
                    fontWeight: FontWeight.w800,
                    color: AppColors.blue,
                  ),
                ),
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: CustomImage(
                      imageSrc: images[currentPage],
                      height: 300.h,
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  CustomText(
                    text: titles[currentPage],
                    fontSize: 24.w,
                    fontWeight: FontWeight.w600,
                    textAlign: TextAlign.start,
                    color: AppColors.naviBlue,
                    maxLines: 2,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomText(
                    text: discreptions[currentPage],
                    fontSize: 16.w,
                    fontWeight: FontWeight.w400,
                    maxLines: 5,
                    color: AppColors.textColor,
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
              SizedBox(height: 120.h,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //======================================== image slider ================================//
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(images.length, (index) {
                      return Row(
                        children: [
                          CircleAvatar(
                            radius: 4.r,
                            backgroundColor: index == currentPage
                                ? AppColors.blue
                                : AppColors.white,
                          ),
                          SizedBox(
                            width: 5.w,
                          )
                        ],
                      );
                    }),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  CustomButton(
                    onTap: () {
                      if (currentPage == images.length - 1) {
                         Get.toNamed(AppRoutes.workScheduleScreen);
                      } else {
                        setState(() {
                          currentPage++;
                        });
                      }
                    },
                    title: currentPage == images.length - 1 ? "Finish" : "Next",
                    fillColor: AppColors.blue,
                    height: 48.h,
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
