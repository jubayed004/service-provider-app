import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_provider/views/components/custom_text/custom_text.dart';

import '../../../../../../utils/app_colors/app_colors.dart';
import '../inner_widget.dart/custom_checkbox_text.dart';

class PalliativeCareScreen extends StatelessWidget {
  const PalliativeCareScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 60,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    BackButton(
                      color: AppColors.primary,
                    ),
                    CustomText(
                      text: "Back",
                      color: AppColors.primary,
                      fontSize: 20.w,
                      fontWeight: FontWeight.w500,
                    )
                  ],
                ),
                CustomText(
                  text: "Clear filters",
                  color: AppColors.black,
                  fontSize: 14.w,
                  fontWeight: FontWeight.w600,
                  right: 20,
                )
              ],
            ),
            Expanded(
                child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "Palliative care",
                      fontSize: 24.w,
                      fontWeight: FontWeight.w600,
                    ),
                    Switch(
                      value: true,
                      onChanged: (value) {},
                      activeColor: AppColors.primary,
                    )
                  ],
                ),
                CustomText(
                  text:
                      "Only show professionals specialising in palliative care",
                  fontSize: 16.w,
                  fontWeight: FontWeight.w400,
                  color: AppColors.textColor,
                  maxLines: 2,
                  textAlign: TextAlign.start,
                ),
                Divider(thickness: 1,color: AppColors.textColor,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: CustomText(
                    text:
                    "Other required tasks",
                    fontSize: 20.w,
                    fontWeight: FontWeight.w500,
                    top: 10.h,
                    bottom: 10.h,
                  ),
                ),
               Column(
                 children: List.generate(4, (index) {
                   return CustomCheckboxText();
                 }),
               ),
                Divider(thickness: 1,color: AppColors.textColor,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: CustomText(
                    text:
                    "Show specialists in",
                    fontSize: 20.w,
                    fontWeight: FontWeight.w500,
                    top: 10.h,
                    bottom: 10.h,
                  ),
                ),
                Column(
                  children: List.generate(4, (index) {
                    return CustomCheckboxText();
                  }),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
