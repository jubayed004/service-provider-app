import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service_provider_app/core/app_routes/app_routes.dart';

class CreatePopup extends StatelessWidget {
  const CreatePopup({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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

        // Title
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Create account",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),

        SizedBox(height: 15),

        // Input Fields
        _buildTextField(hintText: "Full name"),
        SizedBox(height: 10),
        _buildTextField(hintText: "Email"),
        SizedBox(height: 10),
        _buildTextField(hintText: "Password", isPassword: true),

        SizedBox(height: 20),

        // Create Account Button
        ElevatedButton(
          onPressed: () {
            Get.toNamed(AppRoutes.onbroadingScreen);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.teal,
            minimumSize: Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Text(
            "Create Account",
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),

        SizedBox(height: 10),

        // Already have an account? Log in
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Do you have an account? ",
              style: TextStyle(fontSize: 14),
            ),
            GestureDetector(
              onTap: () {}, // Navigate to login
              child: Text(
                "Log in",
                style: TextStyle(fontSize: 14, color: Colors.blue),
              ),
            ),
          ],
        ),

        SizedBox(height: 10),

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
    );
  }

  Widget _buildTextField({required String hintText, bool isPassword = false}) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: Colors.grey.shade100,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        suffixIcon:
            isPassword ? Icon(Icons.visibility_off, color: Colors.grey) : null,
      ),
    );
  }
}
