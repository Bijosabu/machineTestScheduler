import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scheduler/view/landing_page.dart';
import 'package:scheduler/view/widgets/selection_row.dart';
// import 'package:get/get.dart';
// import 'package:scheduler/controller/check_box_controller.dart';
// import 'package:scheduler/view/widgets/selection_tile.dart';

// ignore: must_be_immutable
class SchedulingPage extends StatelessWidget {
  const SchedulingPage({super.key});
  // final CheckBoxController checkBoxController = Get.put(CheckBoxController());
  // List<String> dates = ['SUN', 'MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT'];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 12),
                child: Text(
                  'Set your weekly hours',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(height: size.height * 0.50, child: SelectionRow()),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(LandingPage());
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple[300],
                minimumSize: Size(
                  size.width * 0.80,
                  40,
                )),
            child: const Text(
              'Save',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
