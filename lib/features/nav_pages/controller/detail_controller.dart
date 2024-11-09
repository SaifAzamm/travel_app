import 'package:get/get.dart';

class DetailPageController extends GetxController {
  RxInt selectedPeopleCount = 1.obs;
  RxBool isSelected = false.obs;

  void updateIsSelected() {
    isSelected.value = !isSelected.value;
  }

  void selectPeopleCount(int count) {
    selectedPeopleCount.value = count;
  }
}
