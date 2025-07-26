// MAIN FLUTTER RUNNING PAGE

import 'dart:developer';

import 'package:benchmark/app/config/color.dart';
import 'package:benchmark/app/widgets/custom_snackbar.dart';
import 'package:benchmark/app/widgets/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() async {
  // Initialize the Nepali locale data
  WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init(); // Initialize GetStorage
  try {
    await dotenv.load(fileName: ".env");
  } catch (e) {
    log("Warning: .env file not found, continuing without it");
  }
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    FocusScope.of(context).unfocus();
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        // Use Builder to get context inside the builder
        return Builder(
          builder: (context) {
            return GetMaterialApp(
              scaffoldMessengerKey: CustomSnackBar.scaffoldMessengerKey,
              title: 'BenchMark',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primaryColor: AppColors.backgroundColor,
                appBarTheme: const AppBarTheme(
                  iconTheme: IconThemeData(color: Colors.black),
                  color: AppColors.backgroundColor,
                ),
              ),
              home: SplashScreen(),
            );
          },
        );
      },
    );
  }
}
