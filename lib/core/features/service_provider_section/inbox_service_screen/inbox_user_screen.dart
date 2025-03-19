import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:service_provider_app/core/app_routes/app_routes.dart';
import 'package:service_provider_app/core/components/custom_button/custom_button.dart';
import 'package:service_provider_app/core/components/custom_image/custom_image.dart';
import 'package:service_provider_app/core/components/custom_nav_bar/service_navbar.dart';
import 'package:service_provider_app/core/components/custom_text/custom_text.dart';
import 'package:service_provider_app/core/components/custom_text_field/custom_text_field.dart';
import 'package:service_provider_app/core/features/service_provider_section/inbox_service_screen/inner_widget/history_card.dart';
import 'package:service_provider_app/core/features/service_provider_section/inbox_service_screen/inner_widget/inbox_card.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
import 'package:service_provider_app/core/utils/app_const/app_const.dart';
import 'package:service_provider_app/core/utils/app_images/app_images.dart';
import 'package:service_provider_app/core/utils/app_strings/app_strings.dart';
import '../../../components/custom_tab_selected/custom_tab_bar.dart';
import '../service_home/controller/service_home_controller.dart';

class InboxUserScreen extends StatefulWidget {
  const InboxUserScreen({super.key});

  @override
  State<InboxUserScreen> createState() => _InboxUserScreenState();
}

class _InboxUserScreenState extends State<InboxUserScreen> {
  final requestProController = Get.find<ServiceHomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 70, left: 15, right: 15),
        child: Obx(() {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // if (!requestProController.showSearchField.value) // Hide "Inbox" text when search field is active
                  CustomText(
                    text: "Inbox",
                    fontSize: 32.w,
                    fontWeight: FontWeight.w600,
                    bottom: 9.h,
                    right: 15,
                  ),
                  /*        if (!requestProController.showSearchField.value &&
                      requestProController.currentIndex.value ==
                          0) // Hide search icon when search field is visible
                    IconButton(
                      onPressed: () {
                        requestProController.toggleSearch();
                      },
                      icon: CustomImage(
                        imageSrc: AppImages.searchIcon,
                        height: 25,
                        width: 25,
                      ),
                    ),
                  if (requestProController.showSearchField.value &&
                      requestProController.currentIndex.value ==
                          0) // Show text field when search is active
                    Expanded(
                      child: CustomTextField(
                        fillColor: AppColors.fullWhite,
                        fieldBorderRadius: 14,
                        hintText: "search.....",
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: GestureDetector(
                            onTap: () {
                              requestProController
                                  .toggleSearch(); // Hide search field when suffix icon is clicked
                            },
                            child: CustomImage(
                              imageSrc: AppImages.searchIcon,
                              width: 20,
                              height: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                ],*/
                ],
              ),
              SizedBox(
                height: 15,
              ),
              CustomTabBar(
                tabs: requestProController.inboxTypeList,
                selectedIndex: requestProController.currentIndex.value,
                onTabSelected: (value) {
                  requestProController.currentIndex.value = value;
                  setState(() {});
                },
                selectedColor: AppColors.servicePrimary,
                unselectedColor: AppColors.black,
              ),
              SizedBox(height: 20.h),

              ///======================================= Inbox Section ============================///
              CustomTextField(
                fillColor: AppColors.fullWhite,
                hintText: "Search friends",
                suffixIcon: Icon(Icons.search),
              ),
              SizedBox(
                height: 10.h,
              ),
              if (requestProController.currentIndex.value == 0)
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ListView.builder(
                          padding: EdgeInsets.zero,
                          itemCount: 10,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return InboxCard(
                              onTap: () {
                                Get.toNamed(AppRoutes.serviceChatBubble);
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),

              ///============================== History ===================================///
              if (requestProController.currentIndex.value == 1)
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: 10,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return HistoryCard();
                    },
                  ),
                ),
            ],
          );
        }),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 24.0),
        child: requestProController.currentIndex.value == 0
            ? SizedBox(
                width: 100,
                height: 40,
                child: FloatingActionButton(
                  backgroundColor: AppColors.blue,
                  onPressed: () {
                    _showMyDialog(context);
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.headset_mic,
                        color: AppColors.white,
                      ),
                      CustomText(
                        text: "Support",
                        color: AppColors.white,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                ),
              )
            : SizedBox(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: ServiceNavbar(currentIndex: 1),
    );
  }
}

Future<void> _showMyDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: AppColors.white,
        content: Column(
          mainAxisSize:
              MainAxisSize.min, // Ensure the dialog takes minimal space
          children: [
            Align(
              alignment: Alignment.bottomRight,
                child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                      Icons.close,
                      color: AppColors.black,
                    ))),
            // Top section: Image
            CustomImage(imageSrc: AppImages.chooseOption),
            SizedBox(height: 16), // Spacing between text and buttons
            // Bottom section: Vertical buttons
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: AppColors.blue),
              onPressed: () {
               Get.toNamed(AppRoutes.upcomingAudioCallScreen);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.phone_forwarded,
                    color: AppColors.white,
                  ),
                  CustomText(
                    text: "Call",
                    color: AppColors.white,
                    left: 8,
                  )
                ],
              ),
            ),
            SizedBox(height: 8), // Spacing between buttons
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: AppColors.blue),
              onPressed: () {
                Get.toNamed(AppRoutes.serviceChatBubble);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.chat,
                    color: AppColors.white,
                  ),
                  CustomText(
                    text: "Massage",
                    color: AppColors.white,
                    left: 8,
                  )
                ],
              ),
            ),
          ],
        ),
      );
    },
  );
}
