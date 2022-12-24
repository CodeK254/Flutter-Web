import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_one/controller/counterController.dart';

class OtherScreen extends StatelessWidget {
  final CounterController _counterController = Get.find();
  OtherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Screen was clicked: ${_counterController.counter.value}",
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: (){
                Get.back();
              }, 
              child: const Text(
                "Previous Screen",
              ),
            ),
          ],
        ),
      ),
    );
  }
}