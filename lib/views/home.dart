import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_one/controller/counterController.dart';
import 'package:web_one/views/other.dart';

class HomeScreen extends StatelessWidget {
    final CounterController counterController = Get.put(CounterController());
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(
          () => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Clicks: ${counterController.counter.value}"
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: (){
                  Get.to(OtherScreen());
                }, 
                child: const Text(
                  "Open other Screen",
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => counterController.increment(),
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
      ),
    );
  }
}