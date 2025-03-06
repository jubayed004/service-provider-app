// import 'package:flutter/material.dart';
// import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
// import 'package:service_provider_app/core/app_routes/app_routes.dart';
// import 'package:service_provider_app/core/features/home_user/home_user_screen.dart';
// import 'package:service_provider_app/core/features/service/service_screen.dart';
// import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
// import 'package:service_provider_app/core/utils/app_icons/app_icons.dart';
// import 'package:service_provider_app/core/utils/app_images/app_images.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// import '../../features/auth/favorite/favorite_screen.dart';
// import '../../features/inbox/inbox_screen.dart';
// import '../../features/profile/profile_screen.dart';
//
// class NavBar extends StatefulWidget {
//   const NavBar({super.key});
//
//   @override
//   State<NavBar> createState() => _NavBarState();
// }
//
// class _NavBarState extends State<NavBar> {
//   final controller = PersistentTabController(initialIndex: 0);
//
//   List<Widget> _buildScreens() {
//     return [
//       const ServiceScreen(),// Replace with your actual screen widget
//       const FavoriteScreen(),
//       const HomeUserScreen(),// Replace with your actual screen widget
//       const InboxScreen(), // Replace with your actual screen widget
//       const ProfileScreen(), // Replace with your actual screen widget
//      // Replace with your actual screen widget
//     ];
//   }
//
//   List<PersistentBottomNavBarItem> _navBarItem() {
//     return [
//       PersistentBottomNavBarItem(
//         icon: Image.asset(AppImages.calender_two, width: 24.w),
//         inactiveIcon: Image.asset(AppImages.calender, width: 24.w, color: AppColors.appColor),
//         title: "Service",
//         activeColorPrimary: AppColors.appColor,
//         inactiveColorPrimary: AppColors.grey06,
//       ),
//       PersistentBottomNavBarItem(
//         icon: Image.asset(AppImages.love, width: 24.w),
//         inactiveIcon: Image.asset(AppImages.heart, width: 28.w, color: AppColors.appColor),
//         title: "Favourites",
//         activeColorPrimary: AppColors.appColor,
//         inactiveColorPrimary: AppColors.grey06,
//       ),
//       PersistentBottomNavBarItem(
//         icon: Image.asset(AppImages.calender, width: 28.w),
//         inactiveIcon: Image.asset(AppImages.calender, width: 24.w, color: AppColors.appColor),
//         title: "Inbox",
//         activeColorPrimary: AppColors.appColor,
//         inactiveColorPrimary: AppColors.grey06,
//       ),
//       PersistentBottomNavBarItem(
//         icon: Image.asset(AppImages.calender, width: 24.w),
//         inactiveIcon: Image.asset(AppImages.calender, width: 24.w, color: AppColors.appColor),
//         title: "Profile",
//         activeColorPrimary: AppColors.appColor,
//         inactiveColorPrimary: AppColors.grey06,
//       ),
//       PersistentBottomNavBarItem(
//         icon: Image.asset(AppImages.calender, width: 24.w),
//         inactiveIcon: Image.asset(AppImages.calender, width: 24.w, color: AppColors.appColor),
//         title: "Profile",
//         activeColorPrimary: AppColors.appColor,
//         inactiveColorPrimary: AppColors.grey06,
//       ),
//     ];
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return PersistentTabView(
//       context,
//       controller: controller,
//       screens: _buildScreens(),
//       items: _navBarItem(),
//       backgroundColor: AppColors.white,
//       decoration: NavBarDecoration(
//         colorBehindNavBar: AppColors.appColor,
//         borderRadius: BorderRadius.circular(1),
//       ),
//       handleAndroidBackButtonPress: true,
//       resizeToAvoidBottomInset: true,
//       stateManagement: true,
//       navBarStyle: NavBarStyle.style6,
//       navBarHeight: 80,
//     );
//   }
// }