import 'dart:math';

import 'package:get/get.dart';

class controller extends GetxController {
  RxList l = ["1", "2", "3", "4", "5", "6", "7", "", "8"].obs;
  List m = ["1", "2", "3", "4", "5", "6", "7", "8", ""];
  RxString msg = "".obs;

  get(int i) {
    if (i == 0) {
      if (l[1] == "") {
        l[1] = l[i];
        l[i] = "";
      } else if (l[3] == "") {
        l[3] = l[i];
        l[i] = "";
      }
    } else if (i == 1) {
      if (l[0] == "") {
        l[0] = l[i];
        l[i] = "";
      } else if (l[2] == "") {
        l[2] = l[i];
        l[i] = "";
      } else if (l[4] == "") {
        l[4] = l[i];
        l[i] = "";
      }
    } else if (i == 2) {
      if (l[1] == "") {
        l[1] = l[i];
        l[i] = "";
      } else if (l[5] == "") {
        l[5] = l[i];
        l[i] = "";
      }
    } else if (i == 3) {
      if (l[0] == "") {
        l[0] = l[i];
        l[i] = "";
      } else if (l[4] == "") {
        l[4] = l[i];
        l[i] = "";
      } else if (l[6] == "") {
        l[6] = l[i];
        l[i] = "";
      }
    } else if (i == 4) {
      if (l[1] == "") {
        l[1] = l[i];
        l[i] = "";
      } else if (l[3] == "") {
        l[3] = l[i];
        l[i] = "";
      } else if (l[5] == "") {
        l[5] = l[i];
        l[i] = "";
      } else if (l[7] == "") {
        l[7] = l[i];
        l[i] = "";
      }
    } else if (i == 5) {
      if (l[2] == "") {
        l[2] = l[i];
        l[i] = "";
      } else if (l[4] == "") {
        l[4] = l[i];
        l[i] = "";
      } else if (l[8] == "") {
        l[8] = l[i];
        l[i] = "";
      }
    } else if (i == 6) {
      if (l[3] == "") {
        l[3] = l[i];
        l[i] = "";
      } else if (l[7] == "") {
        l[7] = l[i];
        l[i] = "";
      }
    } else if (i == 7) {
      if (l[4] == "") {
        l[4] = l[i];
        l[i] = "";
      } else if (l[6] == "") {
        l[6] = l[i];
        l[i] = "";
      } else if (l[8] == "") {
        l[8] = l[i];
        l[i] = "";
      }
    } else if (i == 8) {
      if (l[5] == "") {
        l[5] = l[i];
        l[i] = "";
      } else if (l[7] == "") {
        l[7] = l[i];
        l[i] = "";
      }
    }
    win();
  }

  win() {
    if (l[0] == "1" &&
        l[1] == "2" &&
        l[2] == "3" &&
        l[3] == "4" &&
        l[4] == "5" &&
        l[5] == "6" &&
        l[6] == "7" &&
        l[7] == "8" &&
        l[8] == "") {
      msg.value = "Conratulation..! You are win";
    }
  }
}
