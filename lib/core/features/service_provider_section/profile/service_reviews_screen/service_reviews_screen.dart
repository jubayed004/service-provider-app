import 'package:flutter/material.dart';
import 'package:service_provider_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'widget/custom_review_container.dart';

class ServiceReviewsScreen extends StatelessWidget {
  const ServiceReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        titleName: "Reviews",
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: List.generate(3, (value){return CustomReviewContainer();})
        ),
      ),
    );
  }
}
