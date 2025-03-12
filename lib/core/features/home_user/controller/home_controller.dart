
import 'package:get/get.dart';
import 'package:service_provider_app/core/utils/app_strings/app_strings.dart';
class HomeController extends GetxController { 


   RxList<String> tabNames = <String>[AppStrings.justOnce, AppStrings.weekly].obs;
   RxList <String>tabSubTitle = <String>[AppStrings.oneTime, AppStrings.recurring].obs;
   RxInt tabIndex = 0.obs;
   RxInt tabIndex2 = 0.obs;
  
   RxList <String>tabNames2 = <String>[AppStrings.justOnce, AppStrings.exactStart].obs;




}