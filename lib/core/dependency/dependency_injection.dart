
import 'package:get/get.dart';
import 'package:service_provider_app/core/features/service_provider_section/controller/service_controller.dart';
import 'package:service_provider_app/core/features/service_provider_section/inbox_service_screen/controller/service_message_controller.dart';
import 'package:service_provider_app/core/features/service_provider_section/notification/controller/notification_controller.dart';
import 'package:service_provider_app/core/features/service_provider_section/profile/controller/service_profile_controller.dart';
import 'package:service_provider_app/core/features/service_provider_section/service_home/controller/service_home_controller.dart';
import 'package:service_provider_app/core/features/user_section/profile/controller/profile_controller.dart';

import '../features/user_section/user_home/controller/home_controller.dart';

class DependencyInjection extends Bindings {
  @override
  void dependencies() {
    ///==========================Default Custom Controller ==================
    Get.lazyPut(() => HomeController(), fenix: true);
    Get.lazyPut(() => ProfileController(), fenix: true);
    Get.lazyPut(() => ServiceProfileController(), fenix: true);
    Get.lazyPut(() => ServiceHomeController(), fenix: true);
    Get.lazyPut(() => ServiceNotificationController(), fenix: true);
    Get.lazyPut(() => ServiceMessageController(), fenix: true);
   // Get.lazyPut(() => UserMessageController(), fenix: true);
    Get.lazyPut(() => ServiceController(), fenix: true);





  }
}
