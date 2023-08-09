import 'package:flutter/material.dart';
import 'package:scheduler/controller/button_controller.dart';
import 'package:scheduler/view/scheduling_page.dart';

import 'package:get/get.dart';

// ignore: must_be_immutable
class LandingPage extends StatelessWidget {
  LandingPage({super.key});
  final ButtonController buttonController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Scheduler',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: GetX<ButtonController>(builder: (buttonController) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              Text(
                'Hello,You have free slots on ',
                style: TextStyle(
                  color: Colors.deepPurple[400],
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              if (
                  // Check if all buttons are false
                  !(buttonController.isSunMorningChecked.value ||
                      buttonController.isSunAfternoonChecked.value ||
                      buttonController.isSunEveningChecked.value))
                Text(
                  'Sunday',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              if (
                  // Check if all buttons are false
                  !(buttonController.isMonMorningChecked.value ||
                      buttonController.isMonAfternoonChecked.value ||
                      buttonController.isMonEveningChecked.value))
                Text(
                  'Monday',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),
              if (
                  // Check if all buttons are false
                  !(buttonController.isTueMorningChecked.value ||
                      buttonController.isTueEveningChecked.value ||
                      buttonController.isTueAfternoonChecked.value))
                Text(
                  'Tuesday',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),
              if (
                  // Check if all buttons are false
                  !(buttonController.isWedMorningChecked.value ||
                      buttonController.isWedAfternoonChecked.value ||
                      buttonController.isWedEveningChecked.value))
                Text(
                  'Wednesday',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),
              if (
                  // Check if all buttons are false
                  !(buttonController.isThuMorningChecked.value ||
                      buttonController.isThuAfternoonChecked.value ||
                      buttonController.isThuEveningChecked.value))
                Text(
                  'Thursday',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),
              if (
                  // Check if all buttons are false
                  !(buttonController.isFriMorningChecked.value ||
                      buttonController.isFriAfternoonChecked.value ||
                      buttonController.isFriEveningChecked.value))
                Text(
                  'Friday',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),
              if (
                  // Check if all buttons are false
                  !(buttonController.isSatMorningChecked.value ||
                      buttonController.isSatAfternoonChecked.value ||
                      buttonController.isSatEveningChecked.value))
                Text(
                  'Saturday',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple[100]),
                onPressed: () {
                  Get.to(const SchedulingPage());
                },
                child: Text(
                  'EDIT',
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
