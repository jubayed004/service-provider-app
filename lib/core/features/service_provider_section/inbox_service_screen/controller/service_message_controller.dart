import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ServiceMessageController extends GetxController{ 

  final RxList<File> selectedImages = <File>[].obs;
  final ImagePicker _picker = ImagePicker();

// Pick multiple images from the gallery
  Future<void> pickImagesFromGallery() async {
    final List<XFile> images = await _picker.pickMultiImage();
    if (images.isNotEmpty) {
      selectedImages.addAll(images.map((image) => File(image.path)));
    }
  }

  final Rx<File?> selectedImage = Rx<File?>(null);
// Pick an image using the camera
  Future<void> pickImageFromCamera() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      selectedImage.value = File(image.path);
    }
  } 

  Rx<TextEditingController> messageController = TextEditingController().obs;

}