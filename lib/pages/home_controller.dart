import 'package:get/get.dart';
import 'package:simple_api/api.dart';
import 'package:simple_api/models/todo_model.dart';

class HomeController extends GetxController {
  var isLoading = true.obs;
  var todoList = [].obs;
  RxList<Todo> todoLists = RxList<Todo>();

  oninit() {
    super.onInit();
  }

  fetchfinaltodo() async {
    isLoading(true);
    try {
      var todos = await Dataservices.getTodo();
      if (todos.isNotEmpty) {
        todoList.value = todos;
      }
    } finally {
      isLoading(false);
    }
  }
}
