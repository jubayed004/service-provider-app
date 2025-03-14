import 'package:get/get.dart';

class ServiceHomeController extends GetxController {

  RxInt currentIndex = 0.obs;
  RxList<String> requestTypeList =
      ['Request', 'Ongoing', 'Cancelled'].obs;
  RxList<String> inboxTypeList =
      ['Chat', 'History'].obs;
  RxList<String> alertsTypeList =
      ['Chat', 'Alerts'].obs;


  /// ==== inbox search Controller
  RxBool showSearchField = false.obs;

  void toggleSearch() {
    showSearchField.value = !showSearchField.value;
  }
}