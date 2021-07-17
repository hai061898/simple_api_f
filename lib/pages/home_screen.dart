import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_api/pages/home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeScreen'),
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        return ListView.builder(
          itemCount: controller.todoList.length,
          itemBuilder: (context,index){
             return ListTile(
              title: Text(controller.todoList[index].title),
            );
          },
        );
      }),
    );
  }
}
