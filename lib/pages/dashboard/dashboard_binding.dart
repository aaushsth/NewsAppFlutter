import 'package:get/get.dart';
import 'package:get_x_example/pages/posts/posts_controller.dart';

import '../account/account_controller.dart';
import '../home/home_controller.dart';
import 'dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<AccountController>(() => AccountController());
    Get.lazyPut<PostsController>(() => PostsController());
  }
}
