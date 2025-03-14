import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:service_provider_app/core/components/custom_text/custom_text.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';

class TimePickerDesign extends StatelessWidget {
  const TimePickerDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
      child: Container(
        height: 100.h, // Fixed height for the time picker
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.black),
          borderRadius: BorderRadius.circular(8.r),
          color: AppColors.white,
        ),
        padding: EdgeInsets.all(16.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ///=============== Hour Picker (1 to 12)
            _buildPicker(1, 12),
            SizedBox(width: 8.w),
            CustomText(
              text: ':',
              fontSize: 22.w,
              fontWeight: FontWeight.w600,
              color: AppColors.black,
            ),
            SizedBox(width: 8.w),
            ///================= Minute Picker (0 to 59)
            _buildPicker(0, 59),
            SizedBox(width: 8.w),
            // AM/PM Picker
            _buildPeriodPicker(),
          ],
        ),
      ),
    );
  }

  Widget _buildPicker(int min, int max) {
    List<Widget> items = List.generate(
      max - min + 1,
      (index) {
        int value = min + index;
        return Center(
          child: CustomText(
            text: value.toString().padLeft(2, '0'),
            fontSize: 22.w,
            fontWeight: FontWeight.w600,
            color: AppColors.black,
          ),
        );
      },
    );

    return SizedBox(
      height: 120.h, // Picker height
      width: 50.w,
      child: CupertinoPicker(
        scrollController: FixedExtentScrollController(initialItem: 0),
        itemExtent: 30.h,
        onSelectedItemChanged: (index) {},
        children: items,
      ),
    );
  }

  Widget _buildPeriodPicker() {
    return SizedBox(
      height: 120.h, // Picker height
      width: 60.w,
      child: CupertinoPicker(
        scrollController: FixedExtentScrollController(initialItem: 0),
        itemExtent: 30.h,
        onSelectedItemChanged: (index) {},
        children: [
          Center(
              child: CustomText(
                  text: 'AM',
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black)),
           Center(
              child: CustomText(
                  text: 'PM',
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black)),
        ],
      ),
    );
  }
}
