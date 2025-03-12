import 'package:flutter/material.dart';
import 'package:service_provider_app/core/app_routes/app_routes.dart';
import 'package:service_provider_app/core/components/custom_slider/custom_slider.dart';
import 'package:service_provider_app/core/components/custom_text/custom_text.dart';
import 'package:service_provider_app/core/features/home_user/controller/home_controller.dart';
import 'package:service_provider_app/core/features/home_user/inner_widget/arrow_back.dart';
import 'package:service_provider_app/core/features/home_user/inner_widget/custom_tab.dart';
import 'package:service_provider_app/core/features/home_user/inner_widget/custom_time_picker.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
import 'package:service_provider_app/core/utils/app_strings/app_strings.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class BookingTimeScreen extends StatefulWidget {
  const BookingTimeScreen({super.key});

  @override
  State<BookingTimeScreen> createState() => _BookingTimeScreenState();
}

class _BookingTimeScreenState extends State<BookingTimeScreen> {

  HomeController controller=Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appColor,
      body: Obx(() {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///=========================== App Bar ============================
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40.h,),
                  ArrowBack(),
                  SizedBox(height: 5.h,),
                  CustomText(
                    text: AppStrings.whenDoYou,
                    fontSize: 22.w,
                    fontWeight: FontWeight.w600,
                    color: AppColors.white,
                  ),
                ],
              ),
            ),
            ///================================== Body ============================
            SizedBox(
              height: 20.h,
            ),
            Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.white_50,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                    child: ListView(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: CustomText(
                              text: AppStrings.frequency,
                              fontSize: 22.w,
                              fontWeight: FontWeight.w600,
                              color: AppColors.black,
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          //==================================== Tab ============================
                          //
                          CustomTab(
                            subTitles: controller.tabSubTitle,
                            titles: controller.tabNames,
                            currentIndex: controller.tabIndex.value,
                            onTap: (index) {
                              controller.tabIndex.value = index;
                            },
                          ),

                          SizedBox(
                            height: 24.h,
                          ),

                          Divider(
                            color: AppColors.black,
                            thickness: 1,
                          ),

                          SizedBox(
                            height: 16.h,
                          ),
                          if (controller.tabIndex.value == 0)
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomText(
                                      text: "January",
                                      fontSize: 22.w,
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.black,
                                    ),
                                    CustomSingleContainer(
                                      text: AppStrings.showMonth,
                                      width: 120.w,
                                      height: 40.w,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 16.h,
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: List.generate(10, (index) {
                                      return Row(
                                        children: [
                                          CustomSingleContainer(
                                            text: "Mon\n13",
                                            width: 60.w,
                                            fontSize: 16.w,
                                            height: 70.h,
                                          ),
                                          SizedBox(
                                            width: 8.w,
                                          ),
                                        ],
                                      );
                                    }),
                                  ),
                                ),
                              ],
                            ),
                          if (controller.tabIndex.value == 1)
                            Column(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: CustomText(
                                    text: "Day(s) of the week",
                                    fontSize: 22.w,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 16.h,
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: List.generate(7, (index) {
                                      return Row(
                                        children: [
                                          CustomSingleContainer(
                                            text: 'SUN',
                                            height: 35.h,
                                            width: 70.w,
                                          ),
                                          SizedBox(
                                            width: 5.w,
                                          ),
                                        ],
                                      );
                                    }),
                                  ),
                                ),
                              ],
                            ),
                          SizedBox(
                            height: 24.h,
                          ),
                          Divider(
                            color: AppColors.black,
                            thickness: 1,
                          ),
                          SizedBox(
                            height: 24.h,
                          ),

                          Row(
                            //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                text: AppStrings.duration,
                                fontSize: 20.w,
                                fontWeight: FontWeight.w600,
                                color: AppColors.black,
                              ),
                              CustomText(
                                left: 8.w,
                                text: "2h",
                                fontSize: 22.w,
                                fontWeight: FontWeight.w600,
                                color: AppColors.appColor,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 12.h,
                          ),

                          CustomSlider(
                            currentWidth: MediaQuery.sizeOf(context).width,
                            min: 0,
                            max: 10,
                            currentValue: 4,
                          ),
                          SizedBox(
                            height: 24.h,
                          ),

                          ///======================================== Start Button ===========================
                          Align(
                            alignment: Alignment.topLeft,
                            child: CustomText(
                              text: AppStrings.startTime,
                              fontSize: 20.w,
                              fontWeight: FontWeight.w600,
                              color: AppColors.black,
                            ),
                          ),

                          SizedBox(
                            height: 16.h,
                          ),

                          //================================ Second Tab ===========================

                          CustomTab(
                            height: 50.h,
                            titles: controller.tabNames2,
                            currentIndex: controller.tabIndex2.value,
                            onTap: (index) {
                              controller.tabIndex2.value = index;
                            },
                          ),
                          SizedBox(height: 10.h,),

                          if(controller.tabIndex2.value==0)
                            Column(children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: CustomText(
                                  text: 'Morning',
                                  fontSize: 18.w,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.black,
                                ),
                              ),

                              SizedBox(height: 10.h),
                              GridView.builder(
                                padding: EdgeInsets.zero,
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 10.w,
                                  mainAxisSpacing: 10.h,
                                  childAspectRatio: 1.3.w,
                                ),
                                itemCount: 3,
                                itemBuilder: (context, index) {
                                  return TimeSlotCard(
                                    timeRange: getMorningTimeRange(index),
                                  );
                                },
                              ),
                              SizedBox(height: 20.h),

                              // Evening section
                              Align(
                                alignment: Alignment.topLeft,
                                child: CustomText(
                                  text: 'Evening',
                                  fontSize: 18.w,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.black,
                                ),
                              ),
                              SizedBox(height: 10.h),
                              GridView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 10.w,
                                  mainAxisSpacing: 10.h,
                                  childAspectRatio: 1.3.w,
                                ),
                                itemCount: 3,
                                itemBuilder: (context, index) {
                                  return TimeSlotCard(
                                    timeRange: getEveningTimeRange(index),
                                  );
                                },
                              ),
                            ],),
                          if(controller.tabIndex2.value==1)
                            TimePickerDesign(),
                          SizedBox(height: 30.h),

                          ///================= Action Buttons ===========///
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ///==================================== Skip button =====================
                              Flexible(
                                child: SizedBox(
                                  width: 180.w,
                                  height: 45.h,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Get.back();
                                      ///===================== Handle Skip action
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: AppColors.white,
                                      side: BorderSide(color: AppColors.black),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8.r),
                                      ),
                                    ),
                                    child: CustomText(
                                      text: 'Skip',
                                      fontSize: 14.w,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.black,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              //================================= search Button ===========================
                              Flexible(
                                child: SizedBox(
                                  width: 180.w,
                                  height: 45.h,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // Handle Skip action

                                      // Get.toNamed(AppRoutes.searchResultScreen);
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: AppColors.primary,
                                      side: BorderSide(color: AppColors.black),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8.r),
                                      ),
                                    ),
                                    child: CustomText(
                                      text: 'Search',
                                      fontSize: 14.w,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ]),
                  ),
                ))
          ],
        );
      }),
    );
  }

  String getMorningTimeRange(int index) {
    switch (index) {
      case 0:
        return '9 - 6';
      case 1:
        return '9 - 12';
      case 2:
        return '12 - 15';
      case 3:
        return '15 - 18';
      case 4:
        return '18 - 21';
      case 5:
        return '21 - 00';
      default:
        return '';
    }
  }

  String getEveningTimeRange(int index) {
    switch (index) {
      case 0:
        return '15 - 18';
      case 1:
        return '18 - 21';
      case 2:
        return '21 - 00';
      case 3:
        return '9 - 6';
      case 4:
        return '9 - 12';
      case 5:
        return '12 - 15';
      default:
        return '';
    }
  }
}

class CustomSingleContainer extends StatelessWidget {
  const CustomSingleContainer(
      {super.key,
        this.width,
        this.height,
        required this.text,
        this.onTap,
        this.fillColor,
        this.textColor,
        this.fontSize});

  final double? width;
  final double? height;
  final String text;
  final VoidCallback? onTap;
  final Color? fillColor;
  final Color? textColor;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width ?? 100.w,
      height: height ?? 60.h,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.black, width: 1),
          color: fillColor ?? AppColors.white,
          borderRadius: BorderRadius.all(Radius.circular(15.r))),
      child: CustomText(
        text: text,
        color: textColor ?? AppColors.black,
        fontSize: fontSize ?? 12.w,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class TimeSlotCard extends StatelessWidget {
  final String timeRange;

  const TimeSlotCard({
    super.key,
    required this.timeRange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: AppColors.black),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.sunny, // Replace with your desired icon
            color: AppColors.primary,
            size: 22.w,
          ),
          SizedBox(height: 5.h),
          CustomText(
            text: timeRange,
            fontSize: 14.w,
            fontWeight: FontWeight.w600,
            color: AppColors.black,
          ),
        ],
      ),
    );
  }
}

