import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_provider/utils/app_colors/app_colors.dart';
import 'package:service_provider/utils/app_const/app_const.dart';
import 'package:service_provider/views/components/custom_button/custom_button.dart';
import 'package:service_provider/views/components/custom_netwrok_image/custom_network_image.dart';
import 'package:service_provider/views/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:service_provider/views/components/custom_text/custom_text.dart';
import 'package:service_provider/views/components/custom_text_field/custom_text_field.dart';

class ConfirmPayScreen extends StatelessWidget {
  const ConfirmPayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        titleName: "Confirm and pay",
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustomNetworkImage(
                    imageUrl: AppConstants.girlsPhoto,
                    height: 70.h,
                    width: 70.w,
                    boxShape: BoxShape.circle,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: "Mehedi Hassan",
                        fontSize: 18.w,
                        fontWeight: FontWeight.w600,
                      ),
                      Row(
                        children: [
                          CustomText(
                            text: "Mehedi Hassan",
                            fontSize: 14.w,
                            fontWeight: FontWeight.w400,
                            right: 8.w,
                          ),
                          Icon(
                            Icons.verified,
                            color: AppColors.primary,
                            size: 18,
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
              Divider(
                thickness: 1,
                color: AppColors.textColor,
              ),
              CustomText(
                text: "How does it work?",
                fontSize: 16.w,
                fontWeight: FontWeight.w500,
                top: 10.h,
              ),
              CustomText(
                text:
                    "The professional has 24 hours to confirm your booking request",
                fontSize: 12.w,
                fontWeight: FontWeight.w400,
                maxLines: 2,
                top: 10.h,
              ),
              CustomText(
                text:
                    "The professional has 24 hours to confirm your booking request",
                fontSize: 12.w,
                fontWeight: FontWeight.w400,
                maxLines: 2,
                top: 10.h,
                bottom: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Date and time",
                    fontSize: 16.w,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primary2,
                  ),
                  CustomText(
                    text: "Edit",
                    fontSize: 16.w,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primary,
                  ),
                ],
              ),
              SizedBox(
                height: 12.h,
              ),
              Row(
                children: [
                  Icon(
                    Icons.calendar_month,
                    color: AppColors.textColor,
                  ),
                  CustomText(
                    text: "Monday, January 13",
                    fontSize: 12.w,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textColor,
                    left: 8.w,
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              Row(
                children: [
                  Icon(
                    Icons.circle,
                    color: AppColors.textColor,
                  ),
                  CustomText(
                    text: "Start : 10:30 PM",
                    fontSize: 12.w,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textColor,
                    left: 8.w,
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              Row(
                children: [
                  Icon(
                    Icons.circle,
                    color: AppColors.black,
                  ),
                  CustomText(
                    text: "End : 10:30 PM",
                    fontSize: 12.w,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textColor,
                    left: 8.w,
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              Row(
                children: [
                  Icon(
                    Icons.access_time,
                    color: AppColors.black,
                  ),
                  CustomText(
                    text: "(Duration: 2h)",
                    fontSize: 12.w,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textColor,
                    left: 8.w,
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Address",
                    fontSize: 16.w,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primary2,
                  ),
                  CustomText(
                    text: "Change",
                    fontSize: 16.w,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primary,
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    size: 20,
                  ),
                  CustomText(
                    text: "Tallapoosa county, east-central Alabama, U.S",
                    fontSize: 14.w,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textColor,
                  ),
                ],
              ),
              CustomText(
                text: "Service price",
                fontSize: 18.w,
                fontWeight: FontWeight.w500,
                color: AppColors.primary2,
                top: 10.h,
                bottom: 12.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Elderly Care",
                    fontWeight: FontWeight.w400,
                    fontSize: 12.w,
                  ),
                  CustomText(
                    text: "\$10,00/h",
                    fontWeight: FontWeight.w400,
                    fontSize: 12.w,
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Booking hours",
                    fontWeight: FontWeight.w400,
                    fontSize: 12.w,
                  ),
                  CustomText(
                    text: "2h",
                    fontWeight: FontWeight.w400,
                    fontSize: 12.w,
                  ),
                ],
              ),
              Divider(
                thickness: 1,
                color: AppColors.textColor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Subtotal",
                    fontWeight: FontWeight.w400,
                    fontSize: 12.w,
                    color: AppColors.textColor,
                  ),
                  CustomText(
                    text: "\$20.00",
                    fontWeight: FontWeight.w400,
                    fontSize: 12.w,
                    color: AppColors.textColor,
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Client protection",
                    fontWeight: FontWeight.w400,
                    fontSize: 12.w,
                    color: AppColors.textColor,
                  ),
                  CustomText(
                    text: "Free",
                    fontWeight: FontWeight.w400,
                    fontSize: 12.w,
                    color: AppColors.textColor,
                  ),
                ],
              ),
              Divider(
                thickness: 1,
                color: AppColors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Price",
                    fontWeight: FontWeight.w400,
                    fontSize: 14.w,
                    color: AppColors.black,
                  ),
                  CustomText(
                    text: "\$20.00",
                    fontWeight: FontWeight.w400,
                    fontSize: 14.w,
                    color: AppColors.black,
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: AppColors.fullWhite,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(color: AppColors.textColor)]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CustomNetworkImage(
                            imageUrl: AppConstants.girlsPhoto,
                            height: 40,
                            width: 40),
                        SizedBox(
                          width: 20.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: "PayPal",
                              fontSize: 12.w,
                              fontWeight: FontWeight.w700,
                              bottom: 6,
                            ),
                            CustomText(
                              text: "**** **** **** 1578",
                              fontSize: 8.w,
                              fontWeight: FontWeight.w700,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Radio(
                      value: true,
                      groupValue: (),
                      onChanged: (value) {},
                      activeColor: AppColors.primary,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomButton(
                onTap: () {},
                title: "Add payment method",
                isBorder: true,
                fillColor: AppColors.white,
                textColor: AppColors.textColor,
                borderWidth: 1,
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomText(
                text: "Remember that....",
                fontSize: 16.w,
                fontWeight: FontWeight.w500,
                color: AppColors.primary2,
              ),
              CustomText(
                text: "Please, if you have any special requirements for the service, include them  in the message you can add to your booking. This way, the professional can take them into...",
                fontSize: 12.w,
                fontWeight: FontWeight.w400,
                color: AppColors.textColor,
                maxLines: 3,
                textAlign: TextAlign.start,
              ),
              TextButton(onPressed: (){}, child: CustomText(text: "+ More Info",fontSize: 14.w,fontWeight: FontWeight.w500,color: AppColors.primary,)),
              CustomText(
                text: "Additional comments",
                fontSize: 16.w,
                fontWeight: FontWeight.w500,
                color: AppColors.primary2,
              ),
              CustomText(
                text: "Feel free to include any additional details if needed (please avoid contact details)",
                fontSize: 12.w,
                fontWeight: FontWeight.w400,
                color: AppColors.textColor,
                maxLines: 3,
                textAlign: TextAlign.start,
              ),
              SizedBox(height: 8.h,),
              CustomTextField(
                maxLines: 3,
                hintText: "hi... ",
                fillColor: AppColors.fullWhite,
              ),
              CustomText(
                top: 20.h,
                text: "Cancellation policy",
                fontSize: 16.w,
                fontWeight: FontWeight.w500,
                color: AppColors.primary2,
              ),
              CustomText(
                text: "Feel free to include any additional details if needed (please avoid contact details)",
                fontSize: 12.w,
                fontWeight: FontWeight.w400,
                color: AppColors.textColor,
                maxLines: 3,
                textAlign: TextAlign.start,
              ),
              TextButton(onPressed: (){}, child: CustomText(text: "+ More Info",fontSize: 14.w,fontWeight: FontWeight.w500,color: AppColors.primary,)),
              SizedBox(height: 20.h,),
              CustomButton(onTap: (){}, title: "Add payment method",fillColor: AppColors.primary,),
              SizedBox(height: 30.h,),

            ],
          ),
        ),
      ),
    );
  }
}
