import 'package:get/get.dart';

class GetController extends GetxController {
  final counter = 0.obs;

  sumar() {
    counter.value += 1;
    update();
  }

  reset() {
    counter.value = 0;
    update();
  }
}
