import 'package:flutter/material.dart';
import 'package:service_provider_app/core/app_routes/app_routes.dart';
import 'package:service_provider_app/core/components/custom_image/custom_image.dart';
import 'package:service_provider_app/core/components/custom_text/custom_text.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
import 'package:service_provider_app/core/utils/app_images/app_images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class VideoCallingScreen extends StatelessWidget {
  const VideoCallingScreen({super.key});

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
                        text: "04:44",
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
                          backgroundColor: Color(0xff93939399),
                          radius: 25,
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.mic_off_rounded,
                                  color: Colors.white))),
                      SizedBox(
                        width: 20.w,
                      ),
                      CircleAvatar(
                          backgroundColor: Color(0xff93939399),
                          radius: 25,
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.volume_up, color: Colors.white))),
                      SizedBox(
                        width: 20.w,
                      ),
                      CircleAvatar( 
                        backgroundColor: Color(0xff93939399),
                          radius: 25,
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.video_call,
                                color: Colors.white,
                              ))),
                      SizedBox(
                        width: 20.w,
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.red,
                        child: IconButton(
                            onPressed: () {
                              Get.offAllNamed(AppRoutes.serviceChatBubble);
                            },
                            icon: Icon(
                              Icons.call_end,
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
