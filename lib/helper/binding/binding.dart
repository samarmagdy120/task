
import 'package:flapkap_task/core/controller/chart_screen.dart';
import 'package:flapkap_task/core/controller/home_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class Binding extends Bindings{
  @override
  void dependencies() {
    // Get.lazyPut(() => AuthViewModel());
    Get.lazyPut<HomeController>(() => HomeController());
    // Get.lazyPut<ChartController>(() => ChartController());



  }

}