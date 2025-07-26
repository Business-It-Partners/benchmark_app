// LOIGN SCREEN FOR THE BOTH TEACHER AND   STUDENT

import 'package:benchmark/app/config/app_style.dart';
import 'package:benchmark/app/config/color.dart';
import 'package:benchmark/app/modules/common/forget_password/forget_password_page.dart';
import 'package:benchmark/app/modules/common/login/login_controller.dart';
import 'package:benchmark/app/modules/common/register/register.dart';
import 'package:benchmark/app/widgets/custom_button.dart';
import 'package:benchmark/app/widgets/custom_password_field.dart';
import 'package:benchmark/app/widgets/customized_textfield.dart';
import 'package:benchmark/app/widgets/welcome_heading.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final logincontroller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    // close the keyboard when the user taps outside the text field
    FocusScope.of(context).requestFocus(FocusNode());

    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: AppBar(
          scrolledUnderElevation: 0,
          backgroundColor: AppColors.backgroundColor,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: AppPadding.screenHorizontalPadding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                WelcomeHeading(
                  mainHeading: 'Welcome to BenchMark',
                  subHeading: "Login to your account",
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Form(
                    key: logincontroller.loginFromkey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        CustomizedTextfield(
                          key: Key('Email'),
                          keyboardType:
                              TextInputType.emailAddress, // Add this line
                          validator: logincontroller.emailValidator,
                          icon: Icons.email_outlined,
                          myController: logincontroller.emailcontroller,
                          hintText: "Enter Email",
                        ),
                        SizedBox(height: 0.6.h),
                        Obx(
                          key: Key('Password'),
                          () => CustomPasswordField(
                            onPressed: () {
                              logincontroller.isPasswordVisible.value =
                                  !logincontroller.isPasswordVisible.value;
                            },
                            validator: logincontroller.passwordValidator,
                            controller: logincontroller.passwordcontroller,

                            labelText: 'Password',
                            icon: Icons.lock_outline,
                            isVisible: logincontroller.isPasswordVisible
                                .value, // or false based on your requirement
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                Get.to(() => ForgetPasswordPage(),
                                    transition: Transition.rightToLeft,
                                    duration: duration);
                              },
                              child: const Text("Forgot Password?",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 59, 89, 63),
                                    fontSize: 15,
                                  )),
                            ),
                          ),
                        ),
                        Obx(() => CustomButton(
                              key: Key('loginButton'),
                              isLoading: logincontroller.isLoginLoading.value,
                              onPressed: () {
                                // close keyboard
                                FocusScope.of(context).unfocus();
                                logincontroller.loginUser(context);
                              },
                              text: "Login",
                            )),
                        SizedBox(
                          height: 30,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Expanded(
                                child: Divider(
                                  color: Color.fromARGB(255, 97, 96, 96),
                                  height: 0.5,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  'OR',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: AppColors.mainColor,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Divider(
                                  color: Color.fromARGB(255, 97, 96, 96),
                                  height: 0.5,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an account? ",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 59, 89, 63)),
                            ),
                            GestureDetector(
                              key: Key('register'),
                              onTap: () {
                                // close keyboard
                                FocusScope.of(context).unfocus();
                                Get.to(() => RegisterPage(),
                                    transition: Transition.rightToLeft,
                                    duration: duration);
                              },
                              child: Text(
                                "Register",
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  color: Color.fromARGB(255, 55, 116, 92),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
