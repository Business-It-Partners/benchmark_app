// REGISTER OTP VERIFICATION

import 'package:benchmark/app/config/color.dart';
import 'package:benchmark/app/widgets/custom_button.dart';
import 'package:benchmark/app/widgets/loading_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'register_controller.dart';

class OtpVerification extends StatelessWidget {
  final registerController = Get.put(RegisterController());

  final String token; // Token parameter

  OtpVerification({
    Key? key,
    required this.token,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          padding: const EdgeInsets.all(0),
                          alignment: Alignment.centerLeft,
                          onPressed: () {
                            Get.back();
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios_new,
                            size: 20,
                            semanticLabel: 'Back',
                            color: AppColors.iconColors,
                          ),
                        ),
                        const Text(
                          "Otp Verification",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.email_outlined,
                            size: 50,
                            color: AppColors.iconColors,
                          ),
                          const SizedBox(height: 16),
                          Text(
                            "Check your email",
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                              color: AppColors.backgroundColor,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "We have sent a 4-digit OTP to your email address.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: AppColors.backgroundColor,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Please enter the OTP below to verify your account.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 13.5.sp,
                              color: AppColors.backgroundColor,
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Pinput(
                            length: 4,
                            onCompleted: (pin) {
                              registerController.otpPin.value = pin;
                            },
                            onChanged: (String? value) {
                              if (value!.isEmpty || value.length < 4) {
                                // registerController.otpError.value = true;
                              } else {
                                // registerController.otpError.value = false;
                              }
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Obx(() => CustomButton(
                                onPressed: () {
                                  FocusScope.of(context).unfocus();
                                  registerController.verify(context, token);
                                },
                                text: 'Verify',
                                isLoading: registerController.isOtpVerify.value,
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Obx(
            () => registerController.isregisterLoading.value == true
                ? const LoadingScreen()
                : const SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}
