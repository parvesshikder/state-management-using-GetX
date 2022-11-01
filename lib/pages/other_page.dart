import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/controller.dart';

class OthersScreen extends StatelessWidget {
  const OthersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Controller controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text('Other Page'),
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
            Get.back();
          }, child: Text('Previous Page'))
        ],
      ),
    ));
  }
}