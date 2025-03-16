import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:service_provider_app/core/components/custom_nav_bar/service_navbar.dart';
import 'package:service_provider_app/core/components/custom_tab_selected/custom_tab_bar.dart';
import 'package:service_provider_app/core/features/service_provider_section/notification/controller/notification_controller.dart';
import 'package:service_provider_app/core/features/service_provider_section/notification/inner_widget/common_appbar.dart';
import 'package:service_provider_app/core/features/service_provider_section/notification/inner_widget/notification_card.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';

class ServiceNotificationScreen extends StatefulWidget {
  const ServiceNotificationScreen({super.key});

  @override
  State<ServiceNotificationScreen> createState() =>
      _ServiceNotificationScreenState();
}

class _ServiceNotificationScreenState extends State<ServiceNotificationScreen> {
  final ServiceNotificationController controller =
      Get.find<ServiceNotificationController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 60.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.w),
            child: CommonAppbar(
              title: "Notification",
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10.0.w,),//(8.0),
            child: CustomTabBar(
              tabs: controller.notificationTypeList,
              selectedIndex: controller.currentIndex.value,
              onTabSelected: (value) {
                controller.currentIndex.value = value;
                setState(() {});
              },
              selectedColor: AppColors.servicePrimary,
              unselectedColor: AppColors.black,
            ),
          ), 
          //========================== CustomCart =======================     
         SizedBox(
            height: 10.h,
          ),
          Expanded(  
            
            child: ListView.builder(  
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) { 
              
              return NotificationCard();
            }),
          )


        ],
      ),
      bottomNavigationBar: ServiceNavbar(currentIndex: 3),
    );
  }
}
