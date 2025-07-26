// About Us PAGE

import 'package:flutter/material.dart';
import 'package:benchmark/app/config/color.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: Text('About Us'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ShadowContainer(
              child: Text(
                'Welcome to Benchmark Education, your premier platform for comprehensive online learning resources. We are dedicated to providing students with high-quality educational materials that set the benchmark for academic excellence.',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
            SizedBox(height: 20.0),
            ShadowContainer(
              child: Text(
                'At Benchmark Education, we offer an extensive library of digital resources including detailed study notes, textbooks, and PDF materials across various subjects. Our carefully curated content is designed by subject matter experts to help students achieve their academic goals.',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
            SizedBox(height: 20.0),
            ShadowContainer(
              child: Text(
                'Access our premium content through our easy-to-use course enrollment system. Students can purchase individual courses or comprehensive packages to unlock exclusive reading materials, study guides, and educational resources tailored to their specific needs.',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
            SizedBox(height: 20.0),
            ShadowContainer(
              child: Text(
                'With our secure payment gateway and instant access system, getting the education you deserve has never been easier. Join thousands of successful students who have made Benchmark Education their trusted learning companion.',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ShadowContainer extends StatelessWidget {
  final Widget child;

  ShadowContainer({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      padding: EdgeInsets.all(16.0),
      child: child,
    );
  }
}
