import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:service_provider_app/core/app_routes/app_routes.dart';
import 'package:service_provider_app/core/components/custom_button/custom_button.dart';
import 'package:service_provider_app/core/components/custom_image/custom_image.dart';
import 'package:service_provider_app/core/components/custom_text/custom_text.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
import 'package:service_provider_app/core/utils/app_images/app_images.dart';


class GuestOnbrodingScreen extends StatefulWidget {
  const GuestOnbrodingScreen({super.key});

  @override
  State<GuestOnbrodingScreen> createState() => _OnbroadingScreenState();
}

class _OnbroadingScreenState extends State<GuestOnbrodingScreen> {
  int currentPage = 0;
  List<String> images = [
    AppImages.guestImage1,
    AppImages.guestImage2,
    AppImages.guestImage3
  ];

  List<String> titles = [
    'Find your at -\nhome service',
    'Choose your ideal\nprofessional',
    'Enjoy your service',
  ];

  List<String> discreptions = [
    'We offer almost everything: cleaning, private classes, beauty...',
    'Browse through hundreds of professionals and pick the one you like the most.',
    'Welcome the professional at the agreed place and time. Thank you for trusting us!',
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
                    text: "Skip",
                    fontSize: 20.w,
                    fontWeight: FontWeight.w800,
                    color: AppColors.primary,
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
                    maxLines: 2,
                    color: AppColors.naviBlue,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomText(
                    text: discreptions[currentPage],
                    fontSize: 16.w,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textColor,
                    maxLines: 5,
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
              SizedBox(height: 160.h,),
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
                                ? AppColors.primary
                                : AppColors.appWhite,
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
                         Get.toNamed(AppRoutes.guestHomeScreen);
                      } else {
                        setState(() {
                          currentPage++;
                        });
                      }
                    },
                    title: currentPage == images.length - 1 ? "Finish" : "Next",
                    fillColor: AppColors.primary,
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
