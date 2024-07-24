import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getex/classcounter.dart';

class MyCounter extends StatefulWidget {
  const MyCounter({super.key});
    

  @override

  State<MyCounter> createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounter> {
  final CounterController controller = Get.put(CounterController());
 

  @override
  void initState(){
    super.initState();
  }
 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(()=>Text(controller.counter.toString(),style: TextStyle(fontSize: 20)
          
          )

          
          ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        controller.incrementcounter();
        
      }),
    );
    
  }
}