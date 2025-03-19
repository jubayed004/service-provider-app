import 'package:flutter/material.dart';
import 'package:service_provider_app/core/app_routes/app_routes.dart';
import 'package:service_provider_app/core/components/custom_image/custom_image.dart';
import 'package:service_provider_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:service_provider_app/core/components/custom_text/custom_text.dart';
import 'package:service_provider_app/core/utils/app_images/app_images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
class UpcomingAudioCallScreen extends StatefulWidget {
  const UpcomingAudioCallScreen({super.key});

  @override
  State<UpcomingAudioCallScreen> createState() =>
      _UpcomingAudioCallScreenState();
}

class _UpcomingAudioCallScreenState extends State<UpcomingAudioCallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        leftIcon: true,
        iconColors: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 80,
                  child: Center(
                    child: CustomImage(
                      height: 500,
                      imageSrc: AppImages.cartImage,
                    ),
                  )),
            ),
            CustomText(
              text: "Jubayed islam",
              textAlign: TextAlign.center,
              top: 20,
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
            CustomText(
              text: "01797565303",
              textAlign: TextAlign.center,
              top: 10,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              bottom: 270,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.red,
                  child: IconButton(onPressed: () {
                    Get.back();
                  }, icon: Icon(Icons.call_end,color: Colors.white,)),
                ),
                SizedBox(width: 140,),
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.green,
                  child: IconButton(onPressed: () {
                    Get.toNamed(AppRoutes.callingScreen);
                  }, icon: Icon(Icons.call,color: Colors.white,)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
