import 'package:flutter/material.dart';
import 'package:service_provider_app/core/app_routes/app_routes.dart';
import 'package:service_provider_app/core/components/custom_image/custom_image.dart';
import 'package:service_provider_app/core/components/custom_text/custom_text.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
import 'package:service_provider_app/core/utils/app_icons/app_icons.dart';
import 'package:service_provider_app/core/utils/app_images/app_images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class UpcomingVideoCall extends StatefulWidget {
  const UpcomingVideoCall({super.key});

  @override
  State<UpcomingVideoCall> createState() => _UpcomingVideoCallState();
}

class _UpcomingVideoCallState extends State<UpcomingVideoCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              CustomImage(imageSrc: AppImages.vedioImage),
              Positioned(
                  left: 0,
                  right: 0,
                  top: 100,
                  child: Column(
                    children: [
                      CustomText(
                        text: "Jubayed islam",
                        textAlign: TextAlign.center,
                        top: 20,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: AppColors.appColor,
                      ),
                      CustomText(
                        text: "01797565303",
                        textAlign: TextAlign.center,
                        top: 10,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,

                        color: Colors.white,
                      ),
                    ],
                  )),
              Positioned(
                left: 0,
                  right: 0,
                  bottom: 150,
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.red,
                    child: IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(
                          Icons.call_end,
                          color: Colors.white,
                        )),
                  ),
                  SizedBox(
                    width: 140.w,
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.green,
                    child: IconButton(
                        onPressed: () {
                          Get.toNamed(AppRoutes.videoCallingScreen);
                        },
                        icon: Icon(
                          Icons.call,
                          color: Colors.white,
                        )),
                  ),
                ],
              ))
            ],
          )
        ],
      ),
    );
  }
}
