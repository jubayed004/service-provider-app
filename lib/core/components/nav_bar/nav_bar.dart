// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/get.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:service_provider_app/core/components/custom_text/custom_text.dart';
// import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
// import 'package:service_provider_app/core/utils/app_icons/app_icons.dart';
// import 'package:service_provider_app/core/utils/app_strings/app_strings.dart';
//
//
// class NavBar extends StatefulWidget {
//   final int currentIndex;
//   const NavBar({required this.currentIndex, super.key});
//
//   @override
//   State<NavBar> createState() => _NavBarState();
// }
//
// class _NavBarState extends State<NavBar> {
//   late int bottomNavIndex;
//
//   final List<String> selectedIcon = [
//     AppIcons.home,
//     AppIcons.discover,
//     AppIcons.note_favorite,
//     AppIcons.profile,
//   ];
//
//   final List<String> unselectedIcon = [
//     AppIcons.home,
//     AppIcons.discover,
//     AppIcons.note_favorite,
//     AppIcons.profile,
//   ];
//
//   final List<String> userNavText = [
//     AppStrings.home,
//     AppStrings.discover,
//     AppStrings.reserved,
//     AppStrings.profile,
//   ];
//
//   @override
//   void initState() {
//     bottomNavIndex = widget.currentIndex;
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (context, constraints) {
//
//         final isTablet = constraints.maxWidth > 600;
//
//         return Container(
//           padding: EdgeInsets.symmetric(horizontal: 24.w),
//           decoration: BoxDecoration(
//             color: AppColors.white_50,
//             borderRadius: BorderRadius.only(
//                 topLeft:Radius.circular(50),
//                 topRight: Radius.circular(50),
//                 bottomLeft: Radius.circular(12),
//                 bottomRight: Radius.circular(12)
//             ),
//           ),
//           height: 85.h, // Adjust height for tablets
//           width: constraints.maxWidth,
//           alignment: Alignment.center,
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Equal spacing
//             children: List.generate(
//               selectedIcon.length,
//                   (index) => Expanded( // Ensures even distribution
//                 child: GestureDetector(
//                   onTap: () => onTap(index),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       if (index == bottomNavIndex)
//                         _buildSelectedNavItem(index, isTablet)
//                       else
//                         _buildUnselectedNavItem(index, isTablet),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
//
//   /// **Selected Navigation Item (Highlighted Button)**
//   Widget _buildSelectedNavItem(int index, bool isTablet) {
//     return Card(
//       elevation: 70,
//       shadowColor: AppColors.appColors,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.only(
//               topLeft:Radius.circular(50),
//               topRight: Radius.circular(50),
//               bottomLeft: Radius.circular(12),
//               bottomRight: Radius.circular(12)
//           ),
//         ),
//       color: Colors.transparent,
//       child: Container(
//         height: 70.h,
//         width:  70.w,
//         decoration: BoxDecoration(
//           color: AppColors.appColors,
//           borderRadius:  BorderRadius.only(
//               topLeft:Radius.circular(50),
//               topRight: Radius.circular(50),
//               bottomLeft: Radius.circular(12),
//               bottomRight: Radius.circular(12)
//           ),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             SvgPicture.asset(
//               selectedIcon[index],
//               height: isTablet ? 28.h : 24.h,
//               width: isTablet ? 28.w : 24.w,
//              color: AppColors.white,
//             ),
//             SizedBox(height: 6),
//             CustomText(
//               text: userNavText[index],
//               color: AppColors.white,
//               fontWeight: FontWeight.w600,
//               fontSize: isTablet ? 6.sp : 12.w,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   /// **Unselected Navigation Item**
//   Widget _buildUnselectedNavItem(int index, bool isTablet) {
//     return Column(
//       children: [
//         SvgPicture.asset(
//           unselectedIcon[index],
//           height: isTablet ? 28.h : 24.h,
//           width: isTablet ? 28.w : 24.w,
//          color: AppColors.appColors,
//         ),
//         SizedBox(height: 4),
//         CustomText(
//           text: userNavText[index],
//           color: AppColors.appColors,
//           fontWeight: FontWeight.w600,
//           fontSize: isTablet ? 6.sp : 12.sp,
//         ),
//       ],
//     );
//   }
//
//   /// **Navigation Tap Logic**
//   void onTap(int index) {
//     if (index != bottomNavIndex) {
//       switch (index) {
//         case 0:
//          // Get.offAll(() => HomeScreen());
//           break;
//         case 1:
//           // Get.offAll(() => DiscoverHomeScreen());
//           break;
//         case 2:
//           // Get.offAll(() => ReservedScreen());
//           break;
//         case 3:
//           // Get.offAll(() => ProfileScreen());
//           break;
//       }
//     }
//   }
// }
