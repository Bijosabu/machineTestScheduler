// import 'package:get/get.dart';
// import 'package:hive_flutter/hive_flutter.dart';
// // import 'package:hive_flutter/hive_flutter.dart';

// // import 'package:scheduler/model/schedule_model.dart';

// class CheckBoxController extends GetxController {
//   List<RxBool> isCheckedList = List.generate(7, (_) => false.obs);
//   List<RxBool> isButtonPressed = List.generate(21, (_) => false.obs);

//   void setCheckBoxValue(int index, bool currentValue) {
//     isCheckedList[index].value = currentValue;

//     update();
//   }

//   void setButtonPressed(int index, bool value) async {
//     isButtonPressed[index].value = value; // Use value.obs to update the RxBool
//     // await Hive.openBox('buttonStateBox');
//     await Hive.box('buttonStateBox').put(index, value);
//     update();
//   }
// }
