import 'package:get/get.dart';
import 'package:get_x_example/pages/posts/posts_provider.dart';
import '../../models/post.dart';

class PostsController extends GetxController {
  List<Post> postsList = [];
  bool isLoading = true;
  @override
  void onInit() {
    PostsProvider().getPostsList(
      onSuccess: (posts) {
        postsList.addAll(posts);
        isLoading = false;
        update();
      },
      onError: (error) {
        isLoading = false;
        update();
        print("Error:$error");
      }, beforeSend: () {

    },
    );
    super.onInit();
  }
}
