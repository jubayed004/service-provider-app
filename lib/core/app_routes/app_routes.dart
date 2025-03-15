
import 'package:get/get.dart';

import 'package:service_provider_app/core/features/guest_section/guest_home_screen/guest_favourites_screen.dart';
import 'package:service_provider_app/core/features/guest_section/guest_home_screen/guest_home_screen.dart';
import 'package:service_provider_app/core/features/guest_section/guest_home_screen/guest_inbox_screen.dart';
import 'package:service_provider_app/core/features/guest_section/guest_home_screen/guest_profile_screen.dart';
import 'package:service_provider_app/core/features/guest_section/guest_home_screen/guest_service_screen.dart';
import 'package:service_provider_app/core/features/guest_section/guest_onbroding_screen/guest_onbroding_screen.dart';
import 'package:service_provider_app/core/features/guest_section/guest_professional_profile/guest_professional_profile.dart';
import 'package:service_provider_app/core/features/guest_section/guest_search_result_screen/guest_search_result_screen.dart';
import 'package:service_provider_app/core/features/service_provider_section/complete_list_screen/complete_list_screen.dart';
import 'package:service_provider_app/core/features/service_provider_section/onbroding_screen/onbroading_screen.dart';
import 'package:service_provider_app/core/features/service_provider_section/profile/service_profile_screen.dart';
import 'package:service_provider_app/core/features/service_provider_section/service_home/service_home.dart';
import 'package:service_provider_app/core/features/service_provider_section/service_palliative_care/service_palliative_care.dart';
import 'package:service_provider_app/core/features/service_provider_section/service_profile_picture_screen/service_profile_picture_screen.dart';
import 'package:service_provider_app/core/features/service_provider_section/work_schedule_screen/work_schedule_screen.dart';

import 'package:service_provider_app/core/features/user_section/auth/create_account/create_account_screen.dart';
import 'package:service_provider_app/core/features/user_section/inbox/inbox_screen.dart';
import 'package:service_provider_app/core/features/user_section/profile/profile_screen.dart';
import 'package:service_provider_app/core/features/user_section/search/search_screen.dart';
import 'package:service_provider_app/core/features/user_section/search_result_screen.dart/confirm_pay_screen/confirm_pay_screen.dart';
import 'package:service_provider_app/core/features/user_section/search_result_screen.dart/palliative_care_screen/palliative_care_screen.dart';
import 'package:service_provider_app/core/features/user_section/search_result_screen.dart/professional_profile_screen/professional_profile_screen.dart';
import 'package:service_provider_app/core/features/user_section/search_result_screen.dart/search_result_screen.dart';
import 'package:service_provider_app/core/features/user_section/service/service_screen.dart';
import 'package:service_provider_app/core/features/user_section/splash/splash_screen.dart';
import 'package:service_provider_app/core/features/user_section/user_home/booking/booking_time_screen.dart';
import 'package:service_provider_app/core/features/user_section/user_home/home_user_care/home_user_care_screen.dart';
import 'package:service_provider_app/core/features/user_section/user_home/home_user_screen.dart';

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








  static const String welcomeScreen = "/WelcomeScreen";
  static const String selectedScreen = "/SelectedScreen";
  static const String userHomeScreen = "/userHomeScreen";
  static const String userServiceScreen = "/userServiceScreen";
  static const String userFavoriteScreen = "/userFavoriteScreen";
  static const String userInboxScreen = "/userInboxScreen";
  static const String userProfileScreen = "/userProfileScreen";
  static const String careScreen = "/CareScreen";
  static const String bookingTime = "/BookingTime";
  // static const String searchResultScreen = "/SearchResultScreen";
  // static const String palliativeCareScreen = "/PalliativeCareScreen";
  // static const String professionalProfileScreen = "/ProfessionalProfileScreen";
  static const String confirmPayScreen = "/ConfirmPayScreen";
  static const String personalDetailsScreen = "/PersonalDetailsScreen";
  static const String myAddressScreen = "/MyAddressScreen";
  static const String addAddressScreen = "/AddAddressScreen";
  static const String changePasswordScreen = "/ChangePasswordScreen";
  static const String aboutUsScreen = "/AboutUsScreen";
  static const String privacyPolicyScreen = "/PrivacyPolicyScreen";
  static const String termsConditionScreen = "/TermsConditionScreen";
  static const String changeLanguageScreen = "/ChangeLanguageScreen";
  static const String paymentRefundsScreen = "/PaymentRefundsScreen";
  static const String myBookingScreen = "/MyBookingScreen";
  static const String onbroadingScreen = "/OnbroadingScreen";
  static const String userChatScreen = "/UserChatScreen";

  ///=========================== SERVICE PROVIDER ==========================
  static const String serviceCalender = "/ServiceCalender";
  static const String serviceProfileScreen = "/ServiceProfileScreen";
  static const String servicePersonalDetailsScreen =
      "/ServicePersonalDetailsScreen";
  static const String serviceMyBalanceScreen = "/ServiceMyBalanceScreen";
  static const String servicePreferencesScreen = "/ServicePreferencesScreen";
  static const String completeProfessionalScreen =
      "/CompleteProfessionalScreen";
  static const String serviceHomeScreen = "/ServiceHomeScreen";
  static const String completeListScreen = "/CompleteListScreen";
  static const String inboxUserScreen = "/InboxUserScreen";
  static const String serviceNotificationScreen = "/ServiceNotificationScreen";
  static const String serviceChatBubble = "/ServiceChatBubble";
  static const String workScheduleScreen = "/WorkScheduleScreen";
  static const String servicePalliativeCare = "/ServicePalliativeCare";
  static const String serviceProfilePictureScreen = "/ServiceProfilePictureScreen";
  static const String guestOnbrodingScreen = "/GuestOnbrodingScreen";
  static const String guestHomeScreen = "/GuestHomeScreen";
  static const String guestServiceScreen = "/GuestServiceScreen";
  static const String guestFavouritesScreen = "/GuestFavouritesScreen";
  static const String guestInboxScreen = "/GuestInboxScreen";
  static const String guestProfileScreen = "/GuestProfileScreen";
  // static const String searchScreen = "/SearchScreen";
  static const String guestLoadingScreen = "/GuestLoadingScreen";
  static const String professionalFilterScreen = "/ProfessionalFilterScreen";
  static const String workAreasMap = "/WorkAreasMap";
  static const String minimumPriceScreen = "/MinimumPriceScreen";
  static const String serviceReviewsScreen = "/ServiceReviewsScreen";
  static const String serviceChangePasswordScreen = "/ServiceChangePasswordScreen";
  static const String serviceChangeLanguageScreen = "/ServiceChangeLanguageScreen";
  static const String serviceMyListingScreen = "/ServiceMyListingScreen";
  static const String servicePalliativeCareListing = "/ServicePalliativeCareListing";
  static const String guestProfessionalProfile = "/GuestProfessionalProfile";
  static const String guestSearchResultScreen = "/GuestSearchResultScreen";

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




  //
  // GetPage(name: welcomeScreen, page: () => WelcomeScreen()),
  // GetPage(name: userHomeScreen, page: () => HomeScreen()),
  GetPage(name: userServiceScreen, page: () => ServiceScreen()),
  // GetPage(name: userFavoriteScreen, page: () => FavoriteScreen()),
  GetPage(name: userInboxScreen, page: () => InboxScreen()),
  GetPage(name: userProfileScreen, page: () => ProfileScreen()),
  // GetPage(name: careScreen, page: () => CareScreen()),
  // GetPage(name: bookingTime, page: () => BookingTime()),
  GetPage(name: searchResultScreen, page: () => SearchResultScreen()),
  GetPage(name: palliativeCareScreen, page: () => PalliativeCareScreen()),
  GetPage(
      name: professionalProfileScreen,
      page: () => ProfessionalProfileScreen()),
  GetPage(name: confirmPayScreen, page: () => ConfirmPayScreen()),
  // GetPage(name: personalDetailsScreen, page: () => PersonalDetailsScreen()),
  // GetPage(name: myAddressScreen, page: () => MyAddressScreen()),
  // GetPage(name: addAddressScreen, page: () => AddAddressScreen()),
  // GetPage(name: changePasswordScreen, page: () => ChangePasswordScreen()),
  // GetPage(name: aboutUsScreen, page: () => AboutUsScreen()),
  // GetPage(name: privacyPolicyScreen, page: () => PrivacyPolicyScreen()),
  // GetPage(name: termsConditionScreen, page: () => TermsConditionScreen()),
  // GetPage(name: changeLanguageScreen, page: () => ChangeLanguageScreen()),
  // GetPage(name: paymentRefundsScreen, page: () => PaymentRefundsScreen()),
  // GetPage(name: myBookingScreen, page: () => MyBookingScreen()),
  // GetPage(name: userChatScreen, page: () => UserChatScreen()),
  //
  // ///=========================== SERVICE PROVIDER ==========================
  // GetPage(name: serviceCalender, page: () => ServiceCalender()),
  GetPage(name: serviceProfileScreen, page: () => ServiceProfileScreen()),
  // GetPage(
  //     name: servicePersonalDetailsScreen,
  //     page: () => ServicePersonalDetailsScreen()),
  // GetPage(name: serviceMyBalanceScreen, page: () => ServiceMyBalanceScreen()),
  // GetPage(
  //     name: servicePreferencesScreen, page: () => ServicePreferencesScreen()),
  // GetPage(
  //     name: completeProfessionalScreen,
  //     page: () => CompleteProfessionalScreen()),
  GetPage(name: serviceHomeScreen, page: () => ServiceHomeScreen()),
  GetPage(name: completeListScreen, page: () => CompleteListScreen()),
  // GetPage(name: inboxUserScreen, page: () => InboxUserScreen()),
  // GetPage(
  //     name: serviceNotificationScreen,
  //     page: () => ServiceNotificationScreen()),
  // GetPage(name: serviceChatBubble, page: () => ServiceChatBubble()),
  // GetPage(name: selectedScreen, page: () => SelectedScreen()),
  GetPage(name: onbroadingScreen, page: () => OnbroadingScreen()),
  GetPage(name: workScheduleScreen, page: () => WorkScheduleScreen()),
  GetPage(name: servicePalliativeCare, page: () => ServicePalliativeCare()),
   GetPage(name: serviceProfilePictureScreen, page: () => ServiceProfilePictureScreen()),
  GetPage(name: guestOnbrodingScreen, page: () => GuestOnbrodingScreen()),
  GetPage(name: guestHomeScreen, page: () => GuestHomeScreen()),
  GetPage(name: guestServiceScreen, page: () => GuestServiceScreen()),
  GetPage(name: guestFavouritesScreen, page: () => GuestFavouritesScreen()),
  GetPage(name: guestInboxScreen, page: () => GuestInboxScreen()),
  GetPage(name: guestProfileScreen, page: () => GuestProfileScreen()),
  GetPage(name: searchScreen, page: () => SearchScreen()),
  // GetPage(name: guestLoadingScreen, page: () => GuestLoadingScreen()),
  // GetPage(name: professionalFilterScreen, page: () => ProfessionalFilterScreen()),
  // GetPage(name: workAreasMap, page: () => WorkAreasMap()),
  // GetPage(name: minimumPriceScreen, page: () => MinimumPriceScreen()),
  // GetPage(name: serviceReviewsScreen, page: () => ServiceReviewsScreen()),
  // GetPage(name: serviceChangePasswordScreen, page: () => ServiceChangePasswordScreen()),
  // GetPage(name: serviceChangeLanguageScreen, page: () => ServiceChangeLanguageScreen()),
  // GetPage(name: serviceMyListingScreen, page: () => ServiceMyListingScreen()),
  // GetPage(name: servicePalliativeCareListing, page: () => ServicePalliativeCareListing()),
  GetPage(name: guestProfessionalProfile, page: () => GuestProfessionalProfile()),
  GetPage(name: guestSearchResultScreen, page: () => GuestSearchResultScreen()),

];
}