import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_provider_app/core/app_routes/app_routes.dart';
import 'package:service_provider_app/core/components/custom_elevated_button/custom_elevated_button.dart';
import 'package:service_provider_app/core/components/custom_image/custom_image.dart';
import 'package:service_provider_app/core/components/custom_text/custom_text.dart';
import 'package:service_provider_app/core/components/custom_text_field/custom_text_field.dart';
import 'package:service_provider_app/core/components/nav_bar/nav_bar.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
import 'package:service_provider_app/core/utils/app_icons/app_icons.dart';
import 'package:service_provider_app/core/utils/app_images/app_images.dart';
import 'package:service_provider_app/core/utils/app_strings/app_strings.dart';
import 'package:circle_list/circle_list.dart';
import 'package:get/get.dart';

class HomeUserScreen extends StatefulWidget {
  const HomeUserScreen({super.key});

  @override
  State<HomeUserScreen> createState() => _HomeUserScreenState();
}

class _HomeUserScreenState extends State<HomeUserScreen> {
  final List<String> circleItems = [
    AppIcons.house,
    AppIcons.cleaning,
    AppIcons.pets,
    AppIcons.others,
    AppIcons.handyman,
    AppIcons.care,
  ];

  final List<String> circleTexts = [
    AppStrings.home,
    AppStrings.cleaning,
    AppStrings.pets,
    AppStrings.others,
    AppStrings.handyman,
    AppStrings.care,
  ];

  @override
  void initState() {
    super.initState();
    _showPrivacyPolicyBottomSheet();
  }

  void _showPrivacyPolicyBottomSheet() {
    Future.delayed(Duration.zero, () {
      if (mounted) {
        showModalBottomSheet(
          context: context,
          backgroundColor: Colors.white,
          elevation: 10,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
          ),
          builder: (context) => _buildPrivacyPolicyBottomSheet(),
        );
      }
    });
  }

  Widget _buildPrivacyPolicyBottomSheet() {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height / 2,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30.h, left: 20.w, right: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(child: Image.asset(AppImages.privacyPolicy)),
                  SizedBox(height: 44.h),
                  CustomText(
                    text: AppStrings.weValueYourPrivacy,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(height: 12.h),
                  CustomText(
                    text: AppStrings.webelUses,
                    maxLines: 4,
                    textAlign: TextAlign.start,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  SizedBox(height: 12.h),
                  GestureDetector(
                    onTap: () {},
                    child: CustomText(
                      text: AppStrings.privacyPolicy,
                      color: AppColors.appColor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: 120.w,
                    child: Divider(color: AppColors.appColor),
                  ),
                  SizedBox(height: 24.h),
                  CustomElevatedButton(
                    onPressed: () => Get.back(),
                    text: AppStrings.accept,
                    color: AppColors.appColor,
                    textColor: AppColors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white_50,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 44.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ///======================= AppBar Section ====================///
            _buildAppBar(),
            SizedBox(height: 100.h),
            ///======================= CircleList Section ====================///
            _buildCircleList(),
            SizedBox(height: 70.h),
            ///======================= AddAddressButton Section ====================///
            _buildAddAddressButton(),
          ],
        ),
      ),
      bottomNavigationBar: BlackDaimonNavbar(currentIndex: 0),
    );
  }

  Widget _buildAppBar() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(AppImages.iumi_image),
          Row(
            children: [
              GestureDetector(
                onTap: ()=>Get.toNamed(AppRoutes.searchScreen),
                  child: _buildIconButton(AppImages.search)),
              SizedBox(width: 12.w),
              _buildIconButton(AppImages.notification, notificationCount: 1),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildIconButton(String icon, {int? notificationCount}) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      padding: EdgeInsets.all(8.w),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Image.asset(icon),
          if (notificationCount != null)
            Positioned(
              left: 6.w,
              bottom: 10.h,
              child: Container(
                height: 14.h,
                width: 14.w,
                decoration: BoxDecoration(
                  color: AppColors.green,
                  borderRadius: BorderRadius.circular(80),
                ),
                child: CustomText(
                  text: '$notificationCount',
                  color: AppColors.white,
                  fontWeight: FontWeight.w600,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildCircleList() {
    return CircleList(
      animationSetting: AnimationSetting(duration: Duration(seconds: 50)),
      childrenPadding: 40,
      origin: Offset.zero,
      centerWidget: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: CircleAvatar(
          radius: 65.r,
          backgroundColor: AppColors.white,
          child: CustomImage(imageSrc: AppIcons.house),
        ),
      ),
      children: List.generate(circleItems.length, (index) {
        return GestureDetector(
          onTap: () => _handleCircleItemClick(index),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: 45.r,
                backgroundColor: AppColors.white,
                child: CustomImage(imageSrc: circleItems[index]),
              ),
              Positioned(
                bottom: 12.h,
                child: CustomText(
                  text: circleTexts[index],
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.black,
                ),
              ),
            ],
          ),
        );
      }),
    );
  }

  Widget _buildAddAddressButton() {
    return GestureDetector(
      onTap: () {
        Get.bottomSheet(
          SizedBox(
            height: MediaQuery.sizeOf(context).height / 2.5,
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.white_50,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(top: 30.h, left: 20.w, right: 20.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                text: AppStrings.serviceAddress,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500,
                              ),

                                IconButton(
                                onPressed: () =>  Get.back(), icon: Icon( Icons.close,
                                    size: 24.w,
                                    weight: 24.w,
                                    color: AppColors.black,),
                              )

                            ],
                          ),
                          SizedBox(height: 12.h),
                          CustomText(
                            text: AppStrings.selectWhere,
                            maxLines: 4,
                            textAlign: TextAlign.start,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                          SizedBox(height: 12.h),
                          Divider(color: AppColors.neutral_03),
                          SizedBox(height: 16.h),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 14.r,
                                backgroundColor: AppColors.appColor,
                                child: Icon(
                                  Icons.check,
                                  color: AppColors.white,
                                  size: 20.sp,
                                ),
                              ),
                              SizedBox(width: 12.w),
                              Expanded(
                                child: CustomTextField(
                                  fillColor: AppColors.white,
                                ),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              CircleAvatar(
                                radius: 18.r,
                                backgroundColor: AppColors.appColor_01,
                                child: Icon(
                                  Icons.mode_edit_outline_outlined,
                                  color: AppColors.appColor,
                                  size: 26.sp,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16.h),
                          Divider(
                            color: AppColors.neutral_03,
                          ),
                          SizedBox(height: 16.h),
                          CustomElevatedButton(
                            // onPressed: () => Get.back(),
                            text: AppStrings.addAddress,
                            color: AppColors.appColor,
                            textColor: AppColors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(
            text: AppStrings.plushAddAddress,
            fontWeight: FontWeight.w500,
            fontSize: 18.sp,
            color: AppColors.appColor,
          ),
          Icon(
            Icons.keyboard_arrow_down,
            color: AppColors.appColor,
            size: 24.sp,
          ),
        ],
      ),
    );
  }

  void _handleCircleItemClick(int index) {
    switch (index) {
      case 0:

        break;
      case 1:
        print('Second CircleAvatar clicked: ${circleTexts[index]}');
        break;
      case 2:
        print('Third CircleAvatar clicked: ${circleTexts[index]}');
        break;
      case 3:
        print('Fourth CircleAvatar clicked: ${circleTexts[index]}');
        break;
      case 4:
        print('Fifth CircleAvatar clicked: ${circleTexts[index]}');
        break;
      case 5:
        Get.toNamed(AppRoutes.homeUserCareScreen);
        break;
      default:
        print('Unknown CircleAvatar clicked');
    }
  }
}
