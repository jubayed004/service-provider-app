import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import 'package:service_provider_app/core/app_routes/app_routes.dart';
import 'package:service_provider_app/core/components/custom_image/custom_image.dart';
import 'package:service_provider_app/core/components/custom_nav_bar/service_navbar.dart';
import 'package:service_provider_app/core/components/custom_text/custom_text.dart';
import 'package:service_provider_app/core/features/service_provider_section/complete_list_screen/widgets/custom_complete_card.dart';
import 'package:service_provider_app/core/features/service_provider_section/controller/service_controller.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
import 'package:service_provider_app/core/utils/app_images/app_images.dart';


class ServiceCalender extends StatelessWidget {
  ServiceCalender({super.key});
  final serviceController = Get.find<ServiceController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 5.0, top: 80),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomImage(imageSrc: AppImages.timeIcon,imageColor: AppColors.blue,),
                  CustomText(
                    text: "Upcoming Booking",
                    fontSize: 24.w,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ),
                  Row(
                    children: [
                      Obx(() => CustomText(
                        text: serviceController.selectedDate.value != null
                            ? DateFormat('dd/MM/yyyy').format(serviceController.selectedDate.value!)
                            : "Today",
                        fontSize: 12.w,
                        fontWeight: FontWeight.w400,
                        color: AppColors.textColor,
                      )),
                      IconButton(
                        onPressed: () async {
                          await serviceController.pickDate();
                        },
                        icon: Icon(
                          Icons.calendar_month,
                          color: AppColors.textColor,
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Column(
                children: List.generate(30, (index){
                  return CustomCompleteCard(
                    singleButton: true,
                    backClr: AppColors.lightGreback,
                    backTextClr: AppColors.lightGre,
                    buttonName: "Ongoing",
                    onTap: (){
                      Get.toNamed(AppRoutes.completeProfessionalScreen);
                    },
                  );
                }),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: ServiceNavbar(currentIndex: 0),
    );
  }
}
