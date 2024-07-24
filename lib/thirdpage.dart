import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getex/camerapage.dart';


class ThirdPage extends StatefulWidget {
   ThirdPage({super.key, required this.name });
  var name;

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: (){
                 Get.to(CameraPage());
                 
          },
          child: Text(
            // ignore: prefer_interpolation_to_compose_strings
            "go to camera page ",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      ),
    );
  }
}