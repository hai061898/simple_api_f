import 'models/todo_model.dart';
import 'package:http/http.dart' as http;

class Dataservices {
  static var url =
      Uri.https('https://jsonplaceholder.typicode.com/todos', 'api');
  static Future<List<Todo>> getTodo() async {
    var response = await http.get(url);
    
    if (response.statusCode == 200) {
      var data = response.body;
      return todoFromJson(data);
    } else {
      var error = 'error';
      return  todoFromJson(error);
    }
  }
}
