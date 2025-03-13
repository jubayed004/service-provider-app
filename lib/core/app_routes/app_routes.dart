
import 'package:get/get.dart';
import 'package:service_provider_app/core/features/auth/create_account/create_account_screen.dart';
import 'package:service_provider_app/core/features/home_user/booking/booking_time_screen.dart';
import 'package:service_provider_app/core/features/home_user/home_user_care/home_user_care_screen.dart';
import 'package:service_provider_app/core/features/home_user/home_user_screen.dart';
import 'package:service_provider_app/core/features/search/search_screen.dart';
import 'package:service_provider_app/core/features/search_result_screen.dart/palliative_care_screen/palliative_care_screen.dart';
import 'package:service_provider_app/core/features/search_result_screen.dart/professional_profile_screen/professional_profile_screen.dart';
import 'package:service_provider_app/core/features/search_result_screen.dart/search_result_screen.dart';
import 'package:service_provider_app/core/features/splash/splash_screen.dart';

///=========================App Routes=========================
class AppRoutes {
  static const String splashScreen = "/SplashScreen";
  static const String createAccountScreen = "/createAccountScreen";
  static const String homeUserScreen = "/HomeUserScreen";
  static const String homeUserCareScreen = "/HomeUserCareScreen";
  static const String searchScreen = "/SearchScreen";
  static const String bookingTimeScreen = "/BookingTimeScreen";
  static const String palliativeCareScreen = "/palliativeCareScreen";
  static const String searchResultScreen = "/searchResultScreen";
  static const String professionalProfileScreen = "/professionalProfileScreen";


static List<GetPage> routes = [

  ///=========================== Onboarding Screen ==========================

  GetPage(name: splashScreen, page: () => SplashScreen()),
  GetPage(name: createAccountScreen, page: () => CreateAccountScreen()),
  GetPage(name: homeUserScreen, page: () => HomeUserScreen()),
  GetPage(name: homeUserCareScreen, page: () => HomeUserCareScreen()),
  GetPage(name: searchScreen, page: () => SearchScreen()),
  GetPage(name: bookingTimeScreen, page: () => BookingTimeScreen()),
  GetPage(name: palliativeCareScreen, page: () => PalliativeCareScreen()),
  GetPage(name: searchResultScreen, page: () => SearchResultScreen()),
  GetPage(name: professionalProfileScreen, page: () => ProfessionalProfileScreen()),


];
}