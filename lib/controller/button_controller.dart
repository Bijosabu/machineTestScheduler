import 'package:get/get.dart';
import 'package:hive/hive.dart';

class ButtonController extends GetxController {
  RxBool isSundayChecked = false.obs;
  RxBool isMondayChecked = false.obs;
  RxBool isTuesdayChecked = false.obs;
  RxBool isWednesdayChecked = false.obs;
  RxBool isThursdayChecked = false.obs;
  RxBool isFridayChecked = false.obs;
  RxBool isSaturdayChecked = false.obs;
  void setSunCheckBoxValue(bool currentValue) {
    isSundayChecked.value = currentValue;
    update();
  }

  void setMonCheckBoxValue(bool currentValue) {
    isMondayChecked.value = currentValue;
    update();
  }

  void setTueCheckBoxValue(bool currentValue) {
    isTuesdayChecked.value = currentValue;
    update();
  }

  void setWedCheckBoxValue(bool currentValue) {
    isWednesdayChecked.value = currentValue;
    update();
  }

  void setThuCheckBoxValue(bool currentValue) {
    isThursdayChecked.value = currentValue;
    update();
  }

  void setFriCheckBoxValue(bool currentValue) {
    isFridayChecked.value = currentValue;
    update();
  }

  void setSatCheckBoxValue(bool currentValue) {
    isSaturdayChecked.value = currentValue;
    update();
  }

  RxBool isSunMorningChecked = false.obs;
  RxBool isSunAfternoonChecked = false.obs;
  RxBool isSunEveningChecked = false.obs;
  RxBool isMonMorningChecked = false.obs;
  RxBool isMonAfternoonChecked = false.obs;
  RxBool isMonEveningChecked = false.obs;
  RxBool isTueMorningChecked = false.obs;
  RxBool isTueAfternoonChecked = false.obs;
  RxBool isTueEveningChecked = false.obs;
  RxBool isWedMorningChecked = false.obs;
  RxBool isWedAfternoonChecked = false.obs;
  RxBool isWedEveningChecked = false.obs;
  RxBool isThuMorningChecked = false.obs;
  RxBool isThuAfternoonChecked = false.obs;
  RxBool isThuEveningChecked = false.obs;
  RxBool isFriMorningChecked = false.obs;
  RxBool isFriAfternoonChecked = false.obs;
  RxBool isFriEveningChecked = false.obs;
  RxBool isSatMorningChecked = false.obs;
  RxBool isSatAfternoonChecked = false.obs;
  RxBool isSatEveningChecked = false.obs;

  void setButtonPressed(bool value, RxBool check, String key) async {
    check.value = value;
    await Hive.box('buttonStateBox').put(key, value);
    update();
  }

  ButtonController() {
    loadButtonStates();
  }
  Future<void> loadButtonStates() async {
    final box = await Hive.openBox('buttonStateBox');
    isSunMorningChecked.value = box.get('SM', defaultValue: false);
    isSunAfternoonChecked.value = box.get('SA', defaultValue: false);
    isSunEveningChecked.value = box.get('SE', defaultValue: false);
    isMonMorningChecked.value = box.get('MM', defaultValue: false);
    isMonAfternoonChecked.value = box.get('MA', defaultValue: false);
    isMonEveningChecked.value = box.get('ME', defaultValue: false);
    isTueMorningChecked.value = box.get('TM', defaultValue: false);
    isTueAfternoonChecked.value = box.get('TA', defaultValue: false);
    isTueEveningChecked.value = box.get('TE', defaultValue: false);
    isWedMorningChecked.value = box.get('WM', defaultValue: false);
    isWedAfternoonChecked.value = box.get('WA', defaultValue: false);
    isWedEveningChecked.value = box.get('WE', defaultValue: false);
    isThuMorningChecked.value = box.get('THM', defaultValue: false);
    isThuAfternoonChecked.value = box.get('THA', defaultValue: false);
    isThuEveningChecked.value = box.get('THE', defaultValue: false);
    isFriMorningChecked.value = box.get('FM', defaultValue: false);
    isFriAfternoonChecked.value = box.get('FA', defaultValue: false);
    isFriEveningChecked.value = box.get('FE', defaultValue: false);
    isSatMorningChecked.value = box.get('SAM', defaultValue: false);
    isSatAfternoonChecked.value = box.get('SAA', defaultValue: false);
    isSatEveningChecked.value = box.get('SAE', defaultValue: false);
  }
}
