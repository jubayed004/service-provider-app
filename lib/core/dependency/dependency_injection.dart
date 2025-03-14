
import 'package:get/get.dart';

import '../features/user_section/user_home/controller/home_controller.dart';

class DependencyInjection extends Bindings {
  @override
  void dependencies() {
    ///==========================Default Custom Controller ==================
    Get.lazyPut(() => HomeController(), fenix: true);
    // Get.lazyPut(() => ProfileController(), fenix: true);
    // Get.lazyPut(() => ServiceProfileController(), fenix: true);
    // Get.lazyPut(() => ServiceHomeController(), fenix: true);
    // Get.lazyPut(() => ServiceNotificationController(), fenix: true);
    // Get.lazyPut(() => ServiceMessageController(), fenix: true);
    // Get.lazyPut(() => UserMessageController(), fenix: true);
    // Get.lazyPut(() => ServiceController(), fenix: true);





  }
}
