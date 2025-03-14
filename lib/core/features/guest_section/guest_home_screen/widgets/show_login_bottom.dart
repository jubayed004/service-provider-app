import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:service_provider_app/core/utils/app_images/app_images.dart';
import '../../../../../core/app_routes/app_routes.dart';
class ShowLoginBottomSheet {
 static void showLoginBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      backgroundColor: Colors.white,
      builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            top: 10,
            bottom: MediaQuery.of(context).viewInsets.bottom + 20,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Close Button
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Log in",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              SizedBox(height: 20),

              // Apple Login Button
              buildLoginButton(
                icon: Icons.apple,
                text: "Continue with Apple",
                color: Colors.black,
                textColor: Colors.white,
              ),

              SizedBox(height: 10),

              // Facebook Login Button
              buildLoginButton(
                icon: Icons.facebook,
                text: "Continue with Facebook",
                color: Colors.blue,
                textColor: Colors.white,
              ),

              SizedBox(height: 10),

              // Google Login Button
              buildLoginButton(
                // Replace with actual Google logo SVG
                customIcon: AppImages.googleLogo,
                text: "Continue with Google",
                color: Colors.white,
                textColor: Colors.black,
                borderColor: Colors.grey.shade400,
              ),

              SizedBox(height: 10),

              // Divider with "or"
              Row(
                children: [
                  Expanded(child: Divider(color: Colors.grey.shade400)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text("or"),
                  ),
                  Expanded(child: Divider(color: Colors.grey.shade400)),
                ],
              ),

              SizedBox(height: 10),
              // Email Login Button
              buildLoginButton(
                  text: "Log in with email",
                  color: Colors.white,
                  textColor: Colors.black,
                  borderColor: Colors.grey.shade400,
                  onTap: () {
                    Get.toNamed(AppRoutes.userHomeScreen);
                  }),
              SizedBox(height: 15),
              // Terms and Privacy Policy
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text.rich(
                  TextSpan(
                    text: "By creating an account, I accept the ",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                    children: [
                      TextSpan(
                        text: "Terms and Conditions",
                        style: TextStyle(color: Colors.blue),
                      ),
                      TextSpan(text: " and confirm that I have read the "),
                      TextSpan(
                        text: "Privacy Policy",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        );
      },
    );
  }

 static Widget buildLoginButton(
      {IconData? icon,
        String? customIcon,
        required String text,
        required Color color,
        required Color textColor,
        Color? borderColor,
        final VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: color,
          border: Border.all(color: borderColor ?? color),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) ...[
              Icon(icon, color: textColor, size: 22),
              SizedBox(width: 10),
            ] else if (customIcon != null) ...[
              SvgPicture.asset(customIcon,
                  height: 22, width: 22), // Google SVG icon
              SizedBox(width: 10),
            ],
            Text(
              text,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}




