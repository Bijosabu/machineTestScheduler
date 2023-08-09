import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scheduler/constants/constants.dart';
import 'package:scheduler/controller/button_controller.dart';
import 'package:scheduler/view/widgets/main_elevated_button.dart';

class SelectionRow extends StatelessWidget {
  SelectionRow({super.key});
  final ButtonController buttonController = Get.find();
  // final ButtonController buttonController = Get.put(ButtonController());
  // final ButtonController buttonController = Get.find<ButtonController>();
  @override
  Widget build(BuildContext context) {
    return GetX<ButtonController>(builder: (buttonController) {
      return Column(
        children: [
          Row(
            children: [
              Checkbox(
                activeColor: Colors.green,
                shape: const CircleBorder(),
                value: buttonController.isSundayChecked.value,
                onChanged: (value) {
                  buttonController.setSunCheckBoxValue(value ?? false);
                },
              ),
              const Text(
                'SUN',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (buttonController.isSunMorningChecked.value &&
                  buttonController.isSunAfternoonChecked.value &&
                  buttonController.isSunEveningChecked.value &&
                  buttonController.isSundayChecked.value == false)
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'UNAVAILABLE',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey),
                      ),
                    )
                  ],
                ),
              if (buttonController.isSundayChecked.value)
                Row(
                  children: [
                    kWidth5,
                    MainElevatedButton(
                      bgColor: buttonController.isSunMorningChecked.value
                          ? Colors.deepPurple[100]
                          : null,
                      text: 'Morning',
                      onPressed: () {
                        buttonController.setButtonPressed(
                            !buttonController.isSunMorningChecked.value,
                            buttonController.isSunMorningChecked,
                            'SM');
                      },
                    ),
                    kWidth5,
                    MainElevatedButton(
                      text: 'Afternoon',
                      onPressed: () {
                        buttonController.setButtonPressed(
                            !buttonController.isSunAfternoonChecked.value,
                            buttonController.isSunAfternoonChecked,
                            'SA');
                      },
                      bgColor: buttonController.isSunAfternoonChecked.value
                          ? Colors.deepPurple[100]
                          : null,
                    ),
                    kWidth5,
                    MainElevatedButton(
                      onPressed: () {
                        buttonController.setButtonPressed(
                            !buttonController.isSunEveningChecked.value,
                            buttonController.isSunEveningChecked,
                            'SE');
                      },
                      text: 'Evening',
                      bgColor: buttonController.isSunEveningChecked.value
                          ? Colors.deepPurple[100]
                          : null,
                    ),
                    kWidth5,
                  ],
                ),
            ],
          ),
          Row(
            children: [
              Checkbox(
                activeColor: Colors.green,
                shape: const CircleBorder(),
                value: buttonController.isMondayChecked.value,
                onChanged: (value) {
                  buttonController.setMonCheckBoxValue(value ?? false);
                },
              ),
              const Text(
                'MON',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (buttonController.isMonMorningChecked.value &&
                  buttonController.isMonAfternoonChecked.value &&
                  buttonController.isMonEveningChecked.value &&
                  buttonController.isMondayChecked.value == false)
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'UNAVAILABLE',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey),
                      ),
                    )
                  ],
                ),
              if (buttonController.isMondayChecked.value)
                Row(
                  children: [
                    kWidth5,
                    MainElevatedButton(
                      onPressed: () {
                        buttonController.setButtonPressed(
                            !buttonController.isMonMorningChecked.value,
                            buttonController.isMonMorningChecked,
                            'MM');
                      },
                      text: 'Morning',
                      bgColor: buttonController.isMonMorningChecked.value
                          ? Colors.deepPurple[100]
                          : null,
                    ),
                    kWidth5,
                    MainElevatedButton(
                      bgColor: buttonController.isMonAfternoonChecked.value
                          ? Colors.deepPurple[100]
                          : null,
                      onPressed: () {
                        buttonController.setButtonPressed(
                            !buttonController.isMonAfternoonChecked.value,
                            buttonController.isMonAfternoonChecked,
                            'MA');
                      },
                      text: 'Afternoon',
                    ),
                    kWidth5,
                    MainElevatedButton(
                      onPressed: () {
                        buttonController.setButtonPressed(
                            !buttonController.isMonEveningChecked.value,
                            buttonController.isMonEveningChecked,
                            'ME');
                      },
                      text: 'Evening',
                      bgColor: buttonController.isMonEveningChecked.value
                          ? Colors.deepPurple[100]
                          : null,
                    ),
                    kWidth5,
                  ],
                ),
            ],
          ),
          Row(
            children: [
              Checkbox(
                activeColor: Colors.green,
                shape: const CircleBorder(),
                value: buttonController.isTuesdayChecked.value,
                onChanged: (value) {
                  buttonController.setTueCheckBoxValue(value ?? false);
                },
              ),
              const Text(
                'TUE',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (buttonController.isTueMorningChecked.value &&
                  buttonController.isTueAfternoonChecked.value &&
                  buttonController.isTueEveningChecked.value &&
                  buttonController.isTuesdayChecked.value == false)
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'UNAVAILABLE',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey),
                      ),
                    )
                  ],
                ),
              if (buttonController.isTuesdayChecked.value)
                Row(
                  children: [
                    kWidth5,
                    MainElevatedButton(
                      bgColor: buttonController.isTueMorningChecked.value
                          ? Colors.deepPurple[100]
                          : null,
                      text: 'Morning',
                      onPressed: () {
                        buttonController.setButtonPressed(
                            !buttonController.isTueMorningChecked.value,
                            buttonController.isTueMorningChecked,
                            'TM');
                      },
                    ),
                    kWidth5,
                    MainElevatedButton(
                      onPressed: () {
                        buttonController.setButtonPressed(
                            !buttonController.isTueAfternoonChecked.value,
                            buttonController.isTueAfternoonChecked,
                            'TA');
                      },
                      text: 'Afternoon',
                      bgColor: buttonController.isTueAfternoonChecked.value
                          ? Colors.deepPurple[100]
                          : null,
                    ),
                    kWidth5,
                    MainElevatedButton(
                      bgColor: buttonController.isTueEveningChecked.value
                          ? Colors.deepPurple[100]
                          : null,
                      text: 'Evening',
                      onPressed: () {
                        buttonController.setButtonPressed(
                            !buttonController.isTueEveningChecked.value,
                            buttonController.isTueEveningChecked,
                            'TE');
                      },
                    ),
                    kWidth5,
                  ],
                ),
            ],
          ),
          Row(
            children: [
              Checkbox(
                activeColor: Colors.green,
                shape: const CircleBorder(),
                value: buttonController.isWednesdayChecked.value,
                onChanged: (value) {
                  buttonController.setWedCheckBoxValue(value ?? false);
                },
              ),
              const Text(
                'WED',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (buttonController.isWedMorningChecked.value &&
                  buttonController.isWedAfternoonChecked.value &&
                  buttonController.isWedEveningChecked.value &&
                  buttonController.isWednesdayChecked.value == false)
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'UNAVAILABLE',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey),
                      ),
                    )
                  ],
                ),
              if (buttonController.isWednesdayChecked.value)
                Row(
                  children: [
                    kWidth5,
                    MainElevatedButton(
                      onPressed: () {
                        buttonController.setButtonPressed(
                            !buttonController.isWedMorningChecked.value,
                            buttonController.isWedMorningChecked,
                            'WM');
                      },
                      text: 'Morning',
                      bgColor: buttonController.isWedMorningChecked.value
                          ? Colors.deepPurple[100]
                          : null,
                    ),
                    kWidth5,
                    MainElevatedButton(
                      onPressed: () {
                        buttonController.setButtonPressed(
                            !buttonController.isWedAfternoonChecked.value,
                            buttonController.isWedAfternoonChecked,
                            'WA');
                      },
                      text: 'Afternoon',
                      bgColor: buttonController.isWedAfternoonChecked.value
                          ? Colors.deepPurple[100]
                          : null,
                    ),
                    kWidth5,
                    MainElevatedButton(
                      text: 'Evening',
                      bgColor: buttonController.isWedEveningChecked.value
                          ? Colors.deepPurple[100]
                          : null,
                      onPressed: () {
                        buttonController.setButtonPressed(
                            !buttonController.isWedEveningChecked.value,
                            buttonController.isWedEveningChecked,
                            'WE');
                      },
                    ),
                    kWidth5,
                  ],
                ),
            ],
          ),
          Row(
            children: [
              Checkbox(
                activeColor: Colors.green,
                shape: const CircleBorder(),
                value: buttonController.isThursdayChecked.value,
                onChanged: (value) {
                  buttonController.setThuCheckBoxValue(value ?? false);
                },
              ),
              const Text(
                'THU',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (buttonController.isThuMorningChecked.value &&
                  buttonController.isThuAfternoonChecked.value &&
                  buttonController.isThuEveningChecked.value &&
                  buttonController.isThursdayChecked.value == false)
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'UNAVAILABLE',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey),
                      ),
                    )
                  ],
                ),
              if (buttonController.isThursdayChecked.value)
                Row(
                  children: [
                    kWidth5,
                    MainElevatedButton(
                      onPressed: () {
                        buttonController.setButtonPressed(
                            !buttonController.isThuMorningChecked.value,
                            buttonController.isThuMorningChecked,
                            'THM');
                      },
                      text: 'Morning',
                      bgColor: buttonController.isThuMorningChecked.value
                          ? Colors.deepPurple[100]
                          : null,
                    ),
                    kWidth5,
                    MainElevatedButton(
                      bgColor: buttonController.isThuAfternoonChecked.value
                          ? Colors.deepPurple[100]
                          : null,
                      text: 'Afternoon',
                      onPressed: () {
                        buttonController.setButtonPressed(
                            !buttonController.isThuAfternoonChecked.value,
                            buttonController.isThuAfternoonChecked,
                            'THA');
                      },
                    ),
                    kWidth5,
                    MainElevatedButton(
                      onPressed: () {
                        buttonController.setButtonPressed(
                            !buttonController.isThuEveningChecked.value,
                            buttonController.isThuEveningChecked,
                            'THE');
                      },
                      text: 'Evening',
                      bgColor: buttonController.isThuEveningChecked.value
                          ? Colors.deepPurple[100]
                          : null,
                    ),
                    kWidth5,
                  ],
                ),
            ],
          ),
          Row(
            children: [
              Checkbox(
                activeColor: Colors.green,
                shape: const CircleBorder(),
                value: buttonController.isFridayChecked.value,
                onChanged: (value) {
                  buttonController.setFriCheckBoxValue(value ?? false);
                },
              ),
              const Text(
                'FRI',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (buttonController.isFriMorningChecked.value &&
                  buttonController.isFriAfternoonChecked.value &&
                  buttonController.isFriEveningChecked.value &&
                  buttonController.isFridayChecked.value == false)
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'UNAVAILABLE',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey),
                      ),
                    )
                  ],
                ),
              if (buttonController.isFridayChecked.value)
                Row(
                  children: [
                    kWidth5,
                    MainElevatedButton(
                      bgColor: buttonController.isFriMorningChecked.value
                          ? Colors.deepPurple[100]
                          : null,
                      text: 'Morning',
                      onPressed: () {
                        buttonController.setButtonPressed(
                            !buttonController.isFriMorningChecked.value,
                            buttonController.isFriMorningChecked,
                            'FM');
                      },
                    ),
                    kWidth5,
                    MainElevatedButton(
                      text: 'Afternoon',
                      bgColor: buttonController.isFriAfternoonChecked.value
                          ? Colors.deepPurple[100]
                          : null,
                      onPressed: () {
                        buttonController.setButtonPressed(
                            !buttonController.isFriAfternoonChecked.value,
                            buttonController.isFriAfternoonChecked,
                            'FA');
                      },
                    ),
                    kWidth5,
                    MainElevatedButton(
                      onPressed: () {
                        buttonController.setButtonPressed(
                            !buttonController.isFriEveningChecked.value,
                            buttonController.isFriEveningChecked,
                            'FE');
                      },
                      text: 'Evening',
                      bgColor: buttonController.isFriEveningChecked.value
                          ? Colors.deepPurple[100]
                          : null,
                    ),
                    kWidth5,
                  ],
                ),
            ],
          ),
          Row(
            children: [
              Checkbox(
                activeColor: Colors.green,
                shape: const CircleBorder(),
                value: buttonController.isSaturdayChecked.value,
                onChanged: (value) {
                  buttonController.setSatCheckBoxValue(value ?? false);
                },
              ),
              const Text(
                'SAT',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (buttonController.isSatMorningChecked.value &&
                  buttonController.isSatAfternoonChecked.value &&
                  buttonController.isSatEveningChecked.value &&
                  buttonController.isSaturdayChecked.value == false)
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'UNAVAILABLE',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey),
                      ),
                    )
                  ],
                ),
              if (buttonController.isSaturdayChecked.value)
                Row(
                  children: [
                    kWidth5,
                    MainElevatedButton(
                      bgColor: buttonController.isSatMorningChecked.value
                          ? Colors.deepPurple[100]
                          : null,
                      text: 'Morning',
                      onPressed: () {
                        buttonController.setButtonPressed(
                            !buttonController.isSatMorningChecked.value,
                            buttonController.isSatMorningChecked,
                            'SAM');
                      },
                    ),
                    kWidth5,
                    MainElevatedButton(
                      text: 'Afternoon',
                      bgColor: buttonController.isSatAfternoonChecked.value
                          ? Colors.deepPurple[100]
                          : null,
                      onPressed: () {
                        buttonController.setButtonPressed(
                            !buttonController.isSatAfternoonChecked.value,
                            buttonController.isSatAfternoonChecked,
                            'SAA');
                      },
                    ),
                    kWidth5,
                    MainElevatedButton(
                      onPressed: () {
                        buttonController.setButtonPressed(
                            !buttonController.isSatEveningChecked.value,
                            buttonController.isSatEveningChecked,
                            'SAE');
                      },
                      text: 'Evening',
                      bgColor: buttonController.isSatEveningChecked.value
                          ? Colors.deepPurple[100]
                          : null,
                    ),
                    kWidth5,
                  ],
                ),
            ],
          ),
        ],
      );
    });
  }
}
