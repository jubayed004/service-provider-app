import 'package:flutter/material.dart';
import 'package:service_provider_app/core/components/custom_image/custom_image.dart';
import 'package:service_provider_app/core/components/custom_text/custom_text.dart';
import 'package:service_provider_app/core/components/custom_text_field/custom_text_field.dart';
import 'package:service_provider_app/core/features/inbox/controller/tabbar_controller.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_provider_app/core/utils/app_icons/app_icons.dart';
import 'package:service_provider_app/core/utils/app_images/app_images.dart';
import 'package:service_provider_app/core/utils/app_strings/app_strings.dart';

import '../../components/custom_tab_selected/custom_tab_single_text.dart';
import '../../components/nav_bar/nav_bar.dart'; // Import the navbar

class InboxScreen extends StatelessWidget {
  InboxScreen({super.key});

  final tabbarController = Get.put(TabbarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white_50,
      appBar: AppBar(
        backgroundColor: AppColors.white_50,
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        title: Obx(() => CustomText(
              text:
                  tabbarController.currentIndex.value == 0 ? "Inbox" : "Alerts",
              fontWeight: FontWeight.w600,
              fontSize: 32,
            )),
      ),
      body: Obx(() {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///=================== Fixed CustomTabSingleText at the top
            CustomTabSingleText(
              tabs: tabbarController.nameList,
              selectedIndex: tabbarController.currentIndex.value,
              onTabSelected: (value) {
                tabbarController.currentIndex.value = value;
                tabbarController.tabController.animateTo(value);
              },
              selectedColor: AppColors.appColor,
              unselectedColor: AppColors.neutral_03,
            ),

            ///=============================== Fixed CustomTextField below the CustomTabSingleText
            if (tabbarController.currentIndex.value == 0)
              Padding(
                padding:
                    EdgeInsets.only(top: 24, left: 20, right: 20, bottom: 24),
                child: CustomTextField(
                  isDens: true,
                  suffixIcon: Icon(Icons.search),
                  hintText: 'Search friends',
                ),
              ),

            ///======================= Scrollable content below the CustomTextField
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (tabbarController.currentIndex.value == 0)
                      ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        physics:
                            NeverScrollableScrollPhysics(), // Disable inner scrolling
                        itemCount: 9,
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                            shape: Border(top: BorderSide.none),
                            color: AppColors.neutral_01,
                            elevation: 0,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 10),
                              child: ListTile(
                                leading: CustomImage(
                                    imageSrc: AppImages.profileBlack),
                                title: CustomText(
                                  text: 'Admin Maria',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.sp,
                                  textAlign: TextAlign.start,
                                ),
                                subtitle: CustomText(
                                  text: 'Hello Ken, Hope you are doing great',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                  textAlign: TextAlign.start,
                                  maxLines: 3,
                                ),
                                trailing: CustomText(
                                  text: "3:00 pm",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    if (tabbarController.currentIndex.value == 1)
                      Padding(
                        padding: const EdgeInsets.only(top: 24.0),
                        child: Column(

                          children: [
                            Card(
                                elevation: 0,
                                shape: Border(top: BorderSide.none),
                                color: AppColors.neutral_01,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImage(
                                          imageSrc: AppIcons.oder_accepted),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomText(
                                            text: AppStrings.orderAccepted,
                                            left: 10.w,
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          CustomText(
                                            text: AppStrings.weHaveAccepted,
                                            maxLines: 3,
                                            left: 10.w,
                                            right: 12.w,
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.neutral_03,
                                            textAlign: TextAlign.start,
                                          ),
                                        ],
                                      ),
                                      Icon(
                                        Icons.access_time_rounded,
                                        size: 16,
                                      ),
                                      CustomText(
                                        text: AppStrings.twoHrs,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w400,
                                        left: 4,
                                      )
                                    ],
                                  ),
                                )),
                            Card(
                                elevation: 0,
                                shape: Border(top: BorderSide.none),
                                color: AppColors.neutral_01,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImage(
                                          imageSrc: AppIcons.order_complete),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomText(
                                            text: AppStrings.orderComplete,
                                            left: 10.w,
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          CustomText(
                                            text: AppStrings.weHaveAccepted,
                                            maxLines: 3,
                                            left: 10.w,
                                            right: 12.w,
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.neutral_03,
                                            textAlign: TextAlign.start,
                                          ),
                                        ],
                                      ),
                                      Icon(
                                        Icons.access_time_rounded,
                                        size: 16,
                                      ),
                                      CustomText(
                                        text: AppStrings.twoHrs,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w400,
                                        left: 4,
                                      )
                                    ],
                                  ),
                                )),
                            Card(
                                elevation: 0,
                                shape: Border(top: BorderSide.none),
                                color: AppColors.neutral_01,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImage(
                                          imageSrc: AppIcons.cancel_order),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomText(
                                            text: AppStrings.cancelOrder,
                                            left: 10.w,
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          CustomText(
                                            text: AppStrings.weHaveAccepted,
                                            maxLines: 3,
                                            left: 10.w,
                                            right: 12.w,
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.neutral_03,
                                            textAlign: TextAlign.start,
                                          ),
                                        ],
                                      ),
                                      Icon(
                                        Icons.access_time_rounded,
                                        size: 16,
                                      ),
                                      CustomText(
                                        text: AppStrings.twoHrs,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w400,
                                        left: 4,
                                      )
                                    ],
                                  ),
                                )),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        );
      }),
      bottomNavigationBar: BlackDaimonNavbar(currentIndex: 2),
    );
  }
}
