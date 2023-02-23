import 'package:get/get.dart';
import 'dart:async';
import 'package:project_ujikom/app/modules/login/views/login_view.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  late Timer _pindah;
  // final count = 0.obs;
  @override
  void onInit() {
    _pindah = Timer.periodic(
      const Duration(seconds: 4),
      (timer) => Get.off(
        () => const LoginView(),
        transition: Transition.leftToRight,
      ),
    );
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    _pindah.cancel();
    super.onClose();
  }

  // void increment() => count.value++;
}
