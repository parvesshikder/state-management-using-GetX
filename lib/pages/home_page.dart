import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:parvesshikder/controller/controller.dart';

import 'other_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Controller controller = Get.put(Controller());

    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Obx(() => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 100,
          ),
          Text(
            "${controller.counter.value}",
            style: TextStyle(fontSize: 35),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                child: CircleAvatar(
                  child: Icon(Icons.add),
                ),
                onTap: (){
                  controller.increment();
                },
              ),
              SizedBox(
                width: 5,
              ),
              GestureDetector(
                child: CircleAvatar(
                  child: Icon(Icons.remove),
                ),
                onTap: (){
                  controller.decrement();
                },
              ),
            ],
          ),
          SizedBox(
            height: 100,
          ),
          ElevatedButton(onPressed: () {
            Get.to(const OthersScreen());
          }, child: const Text('Next Page'))
        ],
      ),
    ));
  }
}
