// // ignore_for_file: prefer_const_constructors
//
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:pin_code_fields/pin_code_fields.dart';
// import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
//
//
// class CustomPinCode extends StatelessWidget {
//   const CustomPinCode({super.key, required this.controller});
//
//   final TextEditingController controller;
//
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.sizeOf(context);
//     return LayoutBuilder(builder: (context,constraints){
//
//       final isTablet = constraints.maxWidth > 600;
//
//       return Padding(
//         padding: const EdgeInsets.only(left: 30, right: 30),
//         child: PinCodeTextField(
//           textStyle: TextStyle(color: Colors.white),
//           keyboardType: TextInputType.number,
//           appContext: context,
//           length: 4,
//           enableActiveFill: true,
//           animationType: AnimationType.fade,
//           animationDuration: Duration(milliseconds: 300),
//           controller: controller,
//           pinTheme: PinTheme(
//             shape: PinCodeFieldShape.box,
//             borderRadius: BorderRadius.circular(16),
//             fieldHeight: isTablet?70.h:60.h,
//             fieldWidth: size.width * 0.15,
//             inactiveColor: AppColors.grey001,
//             activeColor: AppColors.grey001,
//             activeFillColor: AppColors.grey001,
//             inactiveFillColor: AppColors.grey001,
//             selectedFillColor: AppColors.grey001,
//             disabledColor: AppColors.grey_1,
//             selectedColor: AppColors.grey_1,
//           ),
//         ),
//       );
//     });
//   }
// }
