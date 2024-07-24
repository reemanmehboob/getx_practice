import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getex/imagepicker.dart';

class CameraPage extends StatelessWidget {
   CameraPage({super.key});
  ImagePickerController controller = Get.put(ImagePickerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child: Obx(() => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: controller.imagepath.isNotEmpty ?
            FileImage(File(controller.imagepath.toString())) :
            null
          ),
          TextButton(onPressed: (){
            controller.getImage();
            

          }, child: Text('add image') ),
          Container(
            child: ElevatedButton(
          onPressed: (){
                 Get.toNamed('/logincontroller');
                 
          },
          child: Text("go back"),
          ))
        ],

      ),),
      
       
      ),
      
    );
  }
}