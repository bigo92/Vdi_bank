import 'package:vdi_bank/modules/example/example_controller.dart';
import 'package:get/get.dart';

class ExampleBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExampleController>(() => ExampleController());
  }
}