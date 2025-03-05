//
// import 'package:fluentui_icons/fluentui_icons.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';
// import 'package:service_provider_app/core/components/custom_netwrok_image/custom_network_image.dart';
// import 'package:service_provider_app/core/components/custom_text/custom_text.dart';
// import 'package:service_provider_app/core/helper/shared_prefe/shared_prefe.dart';
// import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
// import 'package:service_provider_app/core/utils/app_const/app_const.dart';
// import 'package:service_provider_app/core/utils/app_icons/app_icons.dart';
//
//
//
// class HomeSideDrawer extends StatefulWidget {
//   const HomeSideDrawer({super.key});
//
//   @override
//   State<HomeSideDrawer> createState() => _HomeSideDrawerState();
// }
//
// class _HomeSideDrawerState extends State<HomeSideDrawer> {
//
//   final storage = GetStorage();
//
//   String status = "";
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//
//     if (storage.read("status") != null) {
//       status = storage.read("status");
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(builder: (context,constraints){
//
//       final isTablet = constraints.maxWidth > 600;
//
//       return Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.only(
//               topRight: Radius.circular(8.r), bottomRight: Radius.circular(8.r)),
//           color: AppColors.white,
//         ),
//         width: MediaQuery.of(context).size.width / 1.3,
//         child: Column(
//           children: [
//
//             SizedBox(
//               height: 42.h,
//             ),
//
//             ///================================ APP LOGO ==============================///
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 CustomNetworkImage(
//                   imageUrl: AppConstants.profileImage,
//                   height:80,
//                   width: 80,
//                   boxShape: BoxShape.circle,
//                   border: Border.all(color: AppColors.primary, width: 2),
//                 ),
//                 SizedBox(
//                   height: 12,
//                 ),
//                 CustomText(
//                   text: "Mehedi Hasan Tarek",
//                   fontSize: 20,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ],
//             ),
//
//             ListView(
//               shrinkWrap: true,
//               physics: const NeverScrollableScrollPhysics(),
//               children: [
//
//                 Padding(
//                   padding: EdgeInsets.only(left: 12.w, right: 12.w),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//
//
//                       ///====================== My Profile  ======================>
//                       ListTile(
//                           title: CustomText(
//                             color: AppColors.appColors,
//                             text: "Profile",
//                             fontSize: 14,
//                             textAlign: TextAlign.start,
//                             fontWeight: FontWeight.w400,
//                           ),
//                           leading: SvgPicture.asset(
//                             AppIcons.profile,
//                             height: 24.h,
//                             width: 24.w,
//                           ),
//                           focusColor: Colors.white30,
//                           trailing: Icon(Icons.arrow_forward),
//                           onTap: () {
//                             Navigator.pop(context);
//                         //    Get.toNamed(AppRoutes.salonEarningScreen);
//                           }
//                       ),
//
//                       /// Divider to separate item
//                       Divider(
//                         height: 1,
//                         thickness: 1,
//                         color: Colors.grey,
//                         indent: 16,
//                         endIndent: 16,
//                       ),
//
//
//                       SizedBox(
//                         height: 8.h,
//                       ),
//
//                       ///====================== Favourites ======================>
//                       ListTile(
//                           title: CustomText(
//                             color: AppColors.black_80,
//                             text: "Favourites",
//                             fontSize: 14,
//                             textAlign: TextAlign.start,
//                             fontWeight: FontWeight.w400,
//                           ),
//                           leading: Icon(Icons.favorite),
//                           focusColor: Colors.white30,
//                           trailing: Icon(Icons.arrow_forward),
//                           onTap: () {
//                             Navigator.pop(context);
//                             // Get.toNamed(AppRoutes.favouritesScreen);
//                           }
//                       ),
//
//                       /// Divider to separate item
//                       Divider(
//                         height: 1,
//                         thickness: 1,
//                         color: Colors.grey,
//                         indent: 16,
//                         endIndent: 16,
//                       ),
//
//
//                       /// Divider to separate item
//                       Divider(
//                         height: 1,
//                         thickness: 1,
//                         color: Colors.grey,
//                         indent: 16,
//                         endIndent: 16,
//                       ),
//
//                       SizedBox(
//                         height: 8.h,
//                       ),
//
//
//                       ///====================== settings ======================>
//
//                       ListTile(
//                           title: CustomText(
//                             color: AppColors.black_80,
//                             text: "settings",
//                             fontSize: 14,
//                             textAlign: TextAlign.start,
//                             fontWeight: FontWeight.w400,
//                           ),
//                           leading: Icon(Icons.settings),
//                           focusColor: Colors.white30,
//                           trailing: Icon(Icons.arrow_forward),
//                           onTap: () {
//                             Navigator.pop(context);
//                            // Get.toNamed(AppRoutes.settingScreen);
//                           }
//                       ),
//                       /// Divider to separate item
//                       Divider(
//                         height: 1,
//                         thickness: 1,
//                         color: Colors.grey,
//                         indent: 16,
//                         endIndent: 16,
//                       ),
//
//                       /// Divider to separate item
//                       Divider(
//                         height: 1,
//                         thickness: 1,
//                         color: Colors.grey,
//                         indent: 16,
//                         endIndent: 16,
//                       ),
//
//
//                       SizedBox(
//                         height: 8.h,
//                       ),
//
//                       ///====================== aboutUs ======================>
//
//                       ListTile(
//                           title: CustomText(
//                             color: AppColors.black_80,
//                             text: "About Us",
//                             fontSize: 14,
//                             textAlign: TextAlign.start,
//                             fontWeight: FontWeight.w400,
//                           ),
//                           leading: Icon(Icons.info_outline),
//                           focusColor: Colors.white30,
//                           trailing: Icon(Icons.arrow_forward),
//                           onTap: () {
//                             Navigator.pop(context);
//                          //   Get.toNamed(AppRoutes.aboutUsScreen);
//                           }
//                       ),
//                       /// Divider to separate item
//                       Divider(
//                         height: 1,
//                         thickness: 1,
//                         color: Colors.grey,
//                         indent: 16,
//                         endIndent: 16,
//                       ),
//
//
//                       SizedBox(
//                         height: 8.h,
//                       ),
//
//                       ///====================== privacyPolicy ======================>
//
//                       ListTile(
//                           title: CustomText(
//                             color: AppColors.black_80,
//                             text: "Privacy Policy",
//                             fontSize: 14,
//                             textAlign: TextAlign.start,
//                             fontWeight: FontWeight.w400,
//                           ),
//                           leading: Icon(Icons.info_outline),
//                           focusColor: Colors.white30,
//                           trailing: Icon(Icons.arrow_forward),
//                           onTap: () {
//                             Navigator.pop(context);
//                           //  Get.toNamed(AppRoutes.privacyPolicyScreen);
//                           }
//                       ),
//                       /// Divider to separate item
//                       Divider(
//                         height: 1,
//                         thickness: 1,
//                         color: Colors.grey,
//                         indent: 16,
//                         endIndent: 16,
//                       ),
//                       SizedBox(
//                         height: 8.h,
//                       ),
//
//                       ///====================== termsAndConditions ======================>
//
//                       ListTile(
//                           title: CustomText(
//                             color: AppColors.black_80,
//                             text: "Terms Conditions",
//                             fontSize: 14,
//                             textAlign: TextAlign.start,
//                             fontWeight: FontWeight.w400,
//                           ),
//                           leading: Icon(Icons.task_rounded),
//                           focusColor: Colors.white30,
//                           trailing: Icon(Icons.arrow_forward),
//                           onTap: () {
//                             Navigator.pop(context);
//                             //Get.toNamed(AppRoutes.termsConditionsScreen);
//                           }
//                       ),
//                       /// Divider to separate item
//                       Divider(
//                         height: 1,
//                         thickness: 1,
//                         color: Colors.grey,
//                         indent: 16,
//                         endIndent: 16,
//                       ),
//                       SizedBox(
//                         height: 8.h,
//                       ),
//
//
//
//                       ///====================== Log Out======================>
//
//                       ListTile(
//                           title: CustomText(
//                             color: AppColors.black_80,
//                             text: "Log Out".tr,
//                             fontSize: 14,
//                             textAlign: TextAlign.start,
//                             fontWeight: FontWeight.w400,
//                           ),
//                           leading: Icon(Icons.logout),
//                           focusColor: Colors.white30,
//                           trailing: Icon(Icons.arrow_forward),
//                           onTap: () {
//                             Navigator.pop(context);
//                             // Get.offNamed(AppRoutes.loginScreen);
//
//                             SharePrefsHelper.remove(AppConstants.bearerToken);
//                           }
//                       ),
//                       /// Divider to separate item
//                       Divider(
//                         height: 1,
//                         thickness: 1,
//                         color: Colors.grey,
//                         indent: 16,
//                         endIndent: 16,
//                       ),
//
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ],
//         ),
//       );
//     });
//   }
//
//   Widget customRow(
//       {
//         required String title,
//         IconData? icon,
//         required bool isTablet,
//         String? imageSrc,
//         required VoidCallback onTap}) =>
//       GestureDetector(
//         onTap: () {
//           onTap();
//         },
//         child: Padding(
//             padding: EdgeInsets.symmetric(vertical: 16),
//             child: Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   children: [
//                     ///Icon(icon,color: AppColors.black_50,),
//                     icon != null
//                         ? Icon(
//                       icon,
//                       color: AppColors.black,
//                       size: isTablet ?42:24,
//                     )
//                         : SvgPicture.asset(
//                       imageSrc ?? "",
//                       height: 20,
//                       width: 20,
//                     ),
//
//                     CustomText(
//                       color: AppColors.black_80,
//                       left: 16.w,
//                       text: title,
//                       fontSize: 14,
//                       fontWeight: FontWeight.w400,
//                     ),
//                   ],
//                 )
//               ],
//             )),
//       );
// }