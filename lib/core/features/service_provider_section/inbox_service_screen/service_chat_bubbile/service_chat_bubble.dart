import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:service_provider_app/core/components/custom_image/custom_image.dart';
import 'package:service_provider_app/core/components/custom_netwrok_image/custom_network_image.dart';
import 'package:service_provider_app/core/components/custom_text_field/custom_text_field.dart';
import 'package:service_provider_app/core/features/service_provider_section/inbox_service_screen/controller/service_message_controller.dart';
import 'package:service_provider_app/core/helper/time_converter/time_converter.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
import 'package:service_provider_app/core/utils/app_const/app_const.dart';
import 'package:service_provider_app/core/utils/app_images/app_images.dart';

import '../../../../../core/app_routes/app_routes.dart';
import '../../../../components/custom_pop_up/custom_pop_up.dart';

class ServiceChatBubble extends StatefulWidget {
  const ServiceChatBubble({super.key});

  @override
  State<ServiceChatBubble> createState() => _ServiceChatBubble();
}

class _ServiceChatBubble extends State<ServiceChatBubble> {
  final ServiceMessageController controller =
      Get.find<ServiceMessageController>();

  List<bool> isMe = [true, false, true, false, true, false, false, true];

  void commonShowBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled:
          true, // Allows you to control the height of the bottom sheet
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15), // Rounded corners
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 5.0,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Title
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Settings',
                    style: TextStyle(
                      fontSize: 20.w,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      Navigator.pop(context); // Close bottom sheet
                    },
                  ),
                ],
              ),
              const Divider(),

              Row(
                children: [
                  const Icon(Icons.block),
                  TextButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (ctx) => AlertDialog(
                          backgroundColor: AppColors.white,
                          insetPadding: EdgeInsets.all(8),
                          contentPadding: EdgeInsets.all(8),
                          content: SizedBox(
                            width: MediaQuery.sizeOf(context).width,
                            child: CustomShowDialog(
                              textColor: AppColors.black,
                              title: "Block This Account",
                              discription:
                                  "Are you sure you want to Block this User?",
                              //showRowButton: true,
                              showColumnButton: true,
                              rightTextButton: "No, Don't Block",
                              leftTextButton: "Yes, Block",
                              // showCloseButton: true,
                              //  showColumnButto: true,
                              //  showColumnButton: true,
                              /*leftOnTap: (){
                                Get.toNamed(AppRoutes.inboxUserScreen);
                              },*/
                            ),
                          ),
                        ),
                      );
                    },
                    child: Text(
                      'Block this user',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16.w,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE2F6FF),
      appBar: AppBar(
        elevation: 0,
        surfaceTintColor: Colors.white, // Color(0xffE2F6FF),
        backgroundColor: AppColors.white, //.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Row(
          children: [
            /* Stack(
              children: [
                CustomNetworkImage(
                  imageUrl: AppConstants.profileImage,
                  height: 45.h,
                  width: 45.w,
                  boxShape: BoxShape.circle,
                ),
                Positioned(
                  bottom: 3.h,
                  right: 3.w,
                  child: Container(
                    height: 12.h,
                    width: 12.w,
                    decoration: BoxDecoration(
                      color: Colors.green, // Replace with dynamic online status
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 10),*/
            /* Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: 'User',
                  fontSize: 18.w,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
                CustomText(
                  text: 'Last seen recently',
                  fontSize: 10.w,
                  color: AppColors.blue,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),*/
          ],
        ),
        actions: [
          IconButton(
            icon: CustomImage(imageSrc: AppImages.videoIcon),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.call,
              color: AppColors.blue,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: AppColors.black,
            ),
            onPressed: () {
              commonShowBottomSheet(context);
            },
          )
        ],
      ),
      body: Obx(() {
        return Column(
          children: [
            //==================== Chat Messages List ====================
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: ListView.builder(
                  reverse: true,
                  itemCount: isMe.length,
                  itemBuilder: (context, index) {
                    //  final data = controller.messageList[index];
                    return CustomInboxMessage(
                      isMe: isMe[index],
                      message:
                          'Yes we are available for you , at first book an appointment and come.',
                      messageTime: DateConverter.formatTimeAgo(
                          '2025-02-19T10:41:45.545Z'),
                      type: 'text',
                      imageUrls: [],
                    );
                  },
                ),
              ),
            ),

            //==================== Message Input Field ====================
            Padding(
              padding: EdgeInsets.only(
                bottom: 10.h,
                left: 10.w,
                right: 10.w,
                top: 10.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Display selected images (if available)
                  if (controller.selectedImages.isNotEmpty)
                    SizedBox(
                      height: 110.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: controller.selectedImages.length,
                        itemBuilder: (context, index) {
                          return Stack(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.file(
                                    controller.selectedImages[index],
                                    height: 100.h,
                                    width: 100.w,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 0,
                                right: 0,
                                child: GestureDetector(
                                  onTap: () {
                                    controller.selectedImages.removeAt(index);
                                    controller.update();
                                  },
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.red,
                                    ),
                                    child: Icon(
                                      Icons.close,
                                      color: Colors.white,
                                      size: 20.w,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),

                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Row(
                          children: [
                            /* IconButton(
                              icon:
                                  const Icon(Icons.image, color: AppColors.blue),
                              onPressed: () async {
                                await controller.pickImagesFromGallery();
                                controller
                                    .update(); // Refresh UI to show selected images
                              },
                            ),*/
                            Expanded(
                              child: CustomTextField(
                                suffixIcon: IconButton(
                                  icon: const Icon(Icons.image,
                                      color: AppColors.blue),
                                  onPressed: () async {
                                    await controller.pickImagesFromGallery();
                                    controller
                                        .update(); // Refresh UI to show selected images
                                  },
                                ),
                                isDens: true,
                                textEditingController:
                                    controller.messageController.value,
                                hintText: 'Message',
                                fieldBorderColor: Colors.white,
                                fillColor: Colors.white,
                                onChanged: (text) {
                                  controller.messageController.refresh();
                                },
                                fieldBorderRadius: 20.r,
                              ),
                            ),
                            SizedBox(width: 5.w),
                            CircleAvatar(
                              backgroundColor: AppColors.blue,
                              child: IconButton(
                                icon: const Icon(Icons.send,
                                    color: AppColors.white),
                                onPressed: () {
                                  if (controller.messageController.value.text
                                          .isNotEmpty ||
                                      controller.selectedImages.isNotEmpty) {
                                    // controller.sendMessage(
                                    //   conversationId: chat.id ?? '',
                                    //   senderId:
                                    //       chat.therapist?.therapistUserId?.id ?? '',
                                    //   // Send multiple images
                                    // );

                                    // Clear images and text field after sending
                                    controller.selectedImages.clear();
                                    controller.messageController.value.clear();
                                    controller.update();
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        );
      }),
      // bottomSheet: Container(
      //     decoration: BoxDecoration(
      //   color: AppColors.white,
      //   borderRadius: BorderRadius.only(
      //     topLeft: Radius.circular(20.r),
      //     topRight: Radius.circular(20.r),
      //   ),
      // )),
    );
  }
}

class CustomInboxMessage extends StatelessWidget {
  final bool isMe;
  final String message;
  final String? messageTime;
  final String type;
  final List<String> imageUrls;

  const CustomInboxMessage({
    super.key,
    required this.isMe,
    required this.message,
    this.messageTime,
    required this.type,
    required this.imageUrls,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        child: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment:
                  isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                if (!isMe)
                  CircleAvatar(
                    backgroundImage: NetworkImage(AppConstants
                        .profileImage), // Replace with user's profile image
                    radius: 16,
                  ),
                const SizedBox(width: 8),
                Flexible(
                  child: Column(
                    crossAxisAlignment: isMe
                        ? CrossAxisAlignment.end
                        : CrossAxisAlignment.start,
                    children: [
                      if (type == 'text') _buildMessageBubble(context),
                      if (type == 'attachment') _buildImageMessage(context),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  //======================================== Build Message Bubble ========================================

  Widget _buildMessageBubble(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width * 0.75,
      ),
      decoration: BoxDecoration(
        color: isMe ? const Color(0xFF0084BF) : Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: const Radius.circular(12),
          topRight: const Radius.circular(12),
          bottomLeft: isMe ? const Radius.circular(12) : Radius.zero,
          bottomRight: isMe ? Radius.zero : const Radius.circular(12),
        ),
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            message,
            style: TextStyle(
              fontSize: 16,
              color: isMe ? Colors.white : Colors.black,
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                messageTime ?? '',
                style: TextStyle(
                  fontSize: 12,
                  color: isMe ? Colors.white : Colors.grey[600],
                ),
              ),
              if (isMe)
                Icon(
                  Icons.done_all,
                  size: 16,
                  color: Colors.white, // Blue if read, grey if sent
                ),
            ],
          ),
          // SizedBox(height: 10.h,)
        ],
      ),
    );
  }

  //============================================= Image Build ================================

  Widget _buildImageMessage(BuildContext context) {
    bool hasMultipleImages = imageUrls.length > 1;

    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        padding: const EdgeInsets.all(8),
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.75,
        ),
        decoration: BoxDecoration(
          color: isMe ? const Color(0xFFDCF8C6) : Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(12),
            topRight: const Radius.circular(12),
            bottomLeft: isMe ? const Radius.circular(12) : Radius.zero,
            bottomRight: isMe ? Radius.zero : const Radius.circular(12),
          ),
          boxShadow: [
            BoxShadow(
              // ignore: deprecated_member_use
              color: Colors.black.withOpacity(0.1),
              blurRadius: 4,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Handle Single & Multiple Images Properly
            if (imageUrls.isNotEmpty)
              hasMultipleImages
                  ? SizedBox(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: imageUrls.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 4),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: GestureDetector(
                                onTap: () {
                                  //  Get.to(()=> ShowImageScreen(imageUrl: ApiUrl.imageUrl + imageUrls[index],));
                                },
                                child: CustomNetworkImage(
                                  imageUrl: AppConstants
                                      .eventImage, // ApiUrl.imageUrl + imageUrls[index],
                                  height: 200, // Fixed height
                                  width: 200, // Fixed width
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  : ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: GestureDetector(
                        onTap: () {
                          //  Get.to(()=> ShowImageScreen(imageUrl: ApiUrl.imageUrl + imageUrls.first,));
                        },
                        child: CustomNetworkImage(
                          imageUrl: AppConstants
                              .eventImage, // ApiUrl.imageUrl + imageUrls.first,
                          height: 200, // Fixed height
                          width: 200, // Fixed width
                        ),
                      ),
                    ),

            // Display text message (if available) under the image
            if (message.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  message,
                  style: const TextStyle(fontSize: 16),
                  softWrap: true,
                  overflow:
                      TextOverflow.visible, // Ensures text wraps correctly
                ),
              ),

            // Message Time & Read Status
            const SizedBox(height: 4),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  messageTime ?? '',
                  style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                ),
                if (isMe)
                  Icon(
                    Icons.done_all,
                    size: 16,
                    color: Colors.blue, // Blue if read, grey if sent
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
