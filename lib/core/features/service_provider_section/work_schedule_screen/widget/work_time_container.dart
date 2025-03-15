import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
import '../../../../components/custom_text/custom_text.dart';
class WorkTimeContainer extends StatelessWidget {
  final String? day;
  final String? availableText;
  final String? startTime;
  final String? endTime;
  final  Function(bool)? onChanged;
  const WorkTimeContainer({super.key, this.day, this.availableText, this.startTime, this.endTime, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              CustomText(text: "Monday", fontSize: 18.w,fontWeight: FontWeight.w500,bottom: 25.h,),
              CustomText(text: "9: 00", fontSize: 18.w,fontWeight: FontWeight.w400,bottom: 10.h,),
              Container(
                height: .8,
                width: MediaQuery.sizeOf(context).width/5,
                color: AppColors.black,
              )
            ],
          ),
          Column(
            children: [
              Switch(value: true, onChanged: (value){}, activeColor: AppColors.servicePrimary,),
              CustomText(text: "9: 00", fontSize: 18.w,fontWeight: FontWeight.w400,bottom: 10.h,),
              Container(
                height: .8,
                width: MediaQuery.sizeOf(context).width/5,
                color: AppColors.black,
              )
            ],
          ),
          CustomText(text: "Available", fontSize: 14.w,fontWeight: FontWeight.w400,color: AppColors.blackText,),
        ],
      ),
    );
  }
}
