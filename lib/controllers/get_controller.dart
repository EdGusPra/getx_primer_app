import 'package:get/get.dart';

class GetController extends GetxController {
  final counter = 0.obs;
  final texto = 'Aguardando acción.'.obs;

  sumar() {
    counter.value += 1;
    texto.value="Sumado";
    update();
  }

  reset() {
    counter.value = 0;
    texto.value = "Reseteado";
    update();
  }
}
