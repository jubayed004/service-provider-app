import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service_provider_app/core/app_routes/app_routes.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
import 'package:service_provider_app/core/utils/app_images/app_images.dart';
import 'package:oktoast/oktoast.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:device_preview/device_preview.dart';
void main() {
  runApp(const MyApp());

   /*runApp(DevicePreview(
     enabled: !kReleaseMode,
     builder: (context) =>
      ///====================
      MyApp(), // Wrap your app
   )
   );*/
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return OKToast(
      child: ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        designSize: const Size(393, 852),
        child: GetMaterialApp(
          theme: ThemeData(
            scaffoldBackgroundColor: AppColors.grey06,
            useMaterial3: true,
          ),
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.homeUserScreen,
          navigatorKey: Get.key,
          getPages: AppRoutes.routes,
        ),
      ),
    );
  }
}

