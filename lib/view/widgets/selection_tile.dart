// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// // import 'package:hive/hive.dart';
// import 'package:scheduler/controller/check_box_controller.dart';

// // ignore: must_be_immutable
// class SelectionTile extends StatelessWidget {
//   SelectionTile({
//     super.key,
//   });

//   List<String> dates = ['SUN', 'MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT'];
//   final CheckBoxController checkBoxController = Get.put(CheckBoxController());
//   @override
//   Widget build(BuildContext context) {
//     // Size size = MediaQuery.of(context).size;
//     return ListView.separated(
//       itemCount: 7,
//       separatorBuilder: (context, index) {
//         return const Divider();
//       },
//       itemBuilder: (context, index) {
//         return GetX<CheckBoxController>(
//           builder: (checkBoxController) {
//             // final int buttonOffset =
//             //     index * 3; // Offset for morning, afternoon, evening buttons

//             final bool morningButtonState =
//                 checkBoxController.isButtonPressed[index].value;
//             final bool afternoonButtonState =
//                 checkBoxController.isButtonPressed[index + 1].value;
//             final bool eveningButtonState =
//                 checkBoxController.isButtonPressed[index + 2].value;

//             return Row(
//               children: [
//                 Row(
//                   children: [
//                     Checkbox(
//                       activeColor: Colors.green,
//                       shape: const CircleBorder(),
//                       value: checkBoxController.isCheckedList[index].value,
//                       onChanged: (value) {
//                         checkBoxController.setCheckBoxValue(
//                             index, value ?? false);
//                       },
//                     ),
//                     Text(dates[index]),
//                   ],
//                 ),
//                 const SizedBox(
//                   width: 5,
//                 ),
//                 if (checkBoxController.isCheckedList[index].value)
//                   Row(
//                     children: [
//                       ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor:
//                               checkBoxController.isButtonPressed[index].value
//                                   ? Colors.deepPurple[100]
//                                   : null,
//                           minimumSize: const Size(16, 32),
//                         ),
//                         onPressed: () {
//                           checkBoxController.setButtonPressed(
//                               index, !morningButtonState);
//                         },
//                         child: const Text(
//                           'Morning',
//                           style: TextStyle(fontSize: 12),
//                         ),
//                       ),
//                       const SizedBox(
//                         width: 5,
//                       ),
//                       // const SizedBox(
//                       //   width: 5,
//                       // ),
//                       ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor:
//                               checkBoxController.isButtonPressed[index].value
//                                   ? Colors.deepPurple[100]
//                                   : null,
//                           minimumSize: const Size(16, 32),
//                         ),
//                         onPressed: () {
//                           checkBoxController.setButtonPressed(
//                               index, !afternoonButtonState);
//                         },
//                         child: const Text(
//                           'Afternoon',
//                           style: TextStyle(fontSize: 12),
//                         ),
//                       ),
//                       // const SizedBox(
//                       //   width: 5,
//                       // ),
//                       const SizedBox(
//                         width: 5,
//                       ),
//                       ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor:
//                               checkBoxController.isButtonPressed[index].value
//                                   ? Colors.deepPurple[100]
//                                   : null,
//                           minimumSize: const Size(16, 32),
//                         ),
//                         onPressed: () {
//                           checkBoxController.setButtonPressed(
//                               index, !eveningButtonState);
//                         },
//                         child: const Text(
//                           'Evening',
//                           style: TextStyle(fontSize: 12),
//                         ),
//                       ),
//                       const SizedBox(
//                         width: 5,
//                       ),
//                     ],
//                   ),
//               ],
//             );
//           },
//         );
//       },
//     );
//   }
// }
