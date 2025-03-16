import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_provider_app/core/components/custom_image/custom_image.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
import 'package:service_provider_app/core/utils/app_const/app_const.dart';
import 'package:service_provider_app/core/utils/app_images/app_images.dart';

import '../../../components/custom_button/custom_button.dart';
import '../../../components/custom_netwrok_image/custom_network_image.dart';
import '../../../components/custom_royel_appbar/custom_royel_appbar.dart';
import '../../../components/custom_text/custom_text.dart';

class CompleteProfessionalScreen extends StatelessWidget {
  const CompleteProfessionalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        titleName: "Details",
        leftIcon: true,
        colors: AppColors.black,
        iconColors: AppColors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ContactDetailsSection(),
              CommentSection(),
              DateAndTimeSection(),
              AddressSection(),
              ServicePriceSection(),
              Row(
                children: [
                  Flexible(
                      child: CustomButton(
                    onTap: () {},
                    title: "Accept",
                    fillColor: AppColors.servicePrimary,
                  )),
                  SizedBox(
                    width: 15.w,
                  ),
                  Flexible(
                      child: CustomButton(
                    onTap: () {},
                    title: "Cancel",
                    isBorder: true,
                    borderWidth: 1,
                    fillColor: AppColors.white,
                    textColor: AppColors.neutral,
                  )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ServicePriceSection extends StatelessWidget {
  const ServicePriceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
        SizedBox(height: 40.h),
      ],
    );
  }
}

class AddressSection extends StatelessWidget {
  const AddressSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 8.h,
        ),
        CustomText(
          text: "Address",
          fontSize: 16.w,
          fontWeight: FontWeight.w500,
          color: AppColors.primary2,
        ),
        SizedBox(
          height: 8.h,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.location_on_outlined,
              size: 20,
            ),
            Expanded(
              child: CustomText(
                left: 8,
                textAlign: TextAlign.start,
                text: "Tallapoosa county, east-central Alabama, U.S",
                fontSize: 14.w,
                fontWeight: FontWeight.w500,
                color: AppColors.neutral,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class DateAndTimeSection extends StatelessWidget {
  const DateAndTimeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: "Date and time",
          fontSize: 16.w,
          fontWeight: FontWeight.w500,
          color: AppColors.primary2,
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
              color: AppColors.neutral,
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
              Icons.circle_outlined,
              color: AppColors.neutral,
            ),
            CustomText(
              text: "Start : 10:30 PM",
              fontSize: 12.w,
              fontWeight: FontWeight.w400,
              color: AppColors.neutral,
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
              color: AppColors.neutral,
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
              color: AppColors.neutral,
              left: 8.w,
            ),
          ],
        ),
      ],
    );
  }
}

class CommentSection extends StatelessWidget {
  const CommentSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: "Comment",
          fontSize: 16.w,
          fontWeight: FontWeight.w500,
          top: 10.h,
          color: AppColors.servicePrimary,
        ),
        CustomText(
          text:
              "The professional has 24 hours to confirm your booking request\nThe professional has 24 hours to confirm your booking request",
          fontSize: 12.w,
          fontWeight: FontWeight.w400,
          maxLines: 2,
          top: 10.h,
          bottom: 10.h,
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}

class ContactDetailsSection extends StatelessWidget {
  const ContactDetailsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  text: "Jubayed islam",
                  fontSize: 18.w,
                  fontWeight: FontWeight.w600,
                ),
                CustomText(
                  text: "01797-565303",
                  fontSize: 14.w,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
          ],
        ),
        CustomImage(
          imageSrc: AppImages.chatIconBlue,
        )
      ],
    );
  }
}
