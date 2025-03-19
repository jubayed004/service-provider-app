import 'package:flutter/material.dart';
import 'package:service_provider_app/core/app_routes/app_routes.dart';
import 'package:service_provider_app/core/components/custom_image/custom_image.dart';
import 'package:service_provider_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:service_provider_app/core/components/custom_text/custom_text.dart';
import 'package:service_provider_app/core/utils/app_images/app_images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
class CallingScreen extends StatefulWidget {
  const CallingScreen({super.key});

  @override
  State<CallingScreen> createState() =>
      _CallingScreenState();
}

class _CallingScreenState extends State<CallingScreen> {
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
            CustomText(text: "0:39",bottom: 16,fontWeight: FontWeight.w500,fontSize: 16,),
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
              color: Colors.blue,
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
              bottom: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Column(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.mic_off_rounded,color: Colors.blue)),
                  CustomText(text: "Mute")
                ],
              ),
                SizedBox(width: 20,),
              Column(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.volume_up,color: Colors.blue)),
                  CustomText(text: "Speaker")
                ],
              ),
                SizedBox(width: 20,),
              Column(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.video_call,color: Colors.blue,)),
                  CustomText(text: "video call")
                ],
              ),
                SizedBox(width: 20,),

            ],
            ),
            SizedBox(height: 150,),
            Center(
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.red,
                child: IconButton(onPressed: () {
                  Get.offAllNamed(AppRoutes.serviceChatBubble);
                }, icon: Icon(Icons.call_end,color: Colors.white,)),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
