import 'package:get/get.dart';
import 'package:service_provider_app/core/helper/shared_prefe/shared_prefe.dart';
import 'package:service_provider_app/core/utils/ToastMsg/toast.dart';
import 'package:service_provider_app/core/utils/app_const/app_const.dart';


class ApiChecker {
  static void checkApi(Response response, {bool getXSnackBar = false}) async {
    if (response.statusCode == 401) {
      await SharePrefsHelper.remove(AppConstants.bearerToken);
       ///Get.offAllNamed(AppRoutes.loginScreen);
    } else {
      Toast.errorToast(response.body["error"]!);
    }
  }
}