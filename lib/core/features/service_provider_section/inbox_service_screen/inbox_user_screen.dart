import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:service_provider_app/core/app_routes/app_routes.dart';
import 'package:service_provider_app/core/components/custom_nav_bar/service_navbar.dart';
import 'package:service_provider_app/core/components/custom_text/custom_text.dart';
import 'package:service_provider_app/core/components/custom_text_field/custom_text_field.dart';
import 'package:service_provider_app/core/features/service_provider_section/inbox_service_screen/inner_widget/history_card.dart';
import 'package:service_provider_app/core/features/service_provider_section/inbox_service_screen/inner_widget/inbox_card.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
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
              //======================================= Inbox Section ============================

              if (requestProController.currentIndex.value == 0)

                Column(
                  children: [
                    CustomTextField(
                      fillColor: AppColors.fullWhite,
                      hintText: "Search friends",
                      suffixIcon: Icon(Icons.search),
                    ),
                    SizedBox(height: 10.h,),
                    InboxCard(
                      onTap: () {
                        Get.toNamed(AppRoutes.serviceChatBubble);
                      },
                    ),
                  ],
                ),
//============================== History ===================================
                if(requestProController.currentIndex.value == 1)
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
      bottomNavigationBar: ServiceNavbar(currentIndex: 1),
    );
  }
}
