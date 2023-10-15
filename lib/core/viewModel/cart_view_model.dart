import 'package:get/get.dart';

class CartViewModel extends GetxController {
  int count1 = 1;
  int count2 = 1;
  int count3 = 1;
  int count4 = 1;

  void increment1() {
    count1++;
    update();
  }

  void decrement1() {
    if (count1 > 0) {
      count1--;
      update();
    }
  }

  void increment2() {
    count2++;
    update();
  }

  void decrement2() {
    if (count2 > 0) {
      count2--;
      update();
    }
  }

  void increment3() {
    count3++;
    update();
  }

  void decrement3() {
    if (count3 > 0) {
      count3--;
      update();
    }
  }

  void increment4() {
    count4++;
    update();
  }

  void decrement4() {
    if (count4 > 0) {
      count4--;
      update();
    }
  }

}
