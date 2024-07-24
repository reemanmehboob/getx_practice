import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:http/http.dart';

class Logincontroller extends GetxController{
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  RxBool loading = false.obs;

  void loginApi()async{
    loading.value = true;

    try{
      final response = await post(Uri.parse('https://reqres.in/api/login'),
    body: {
      'email' : emailController.value.text,
      'password': passwordController.value.text + 'sdf'
    }
    );
    var data = jsonDecode(response.body);

    if(response.statusCode == 200){
      loading.value = false;
      Get.snackbar('login successful','congratulations');


    }
    else{
      loading.value = false;
       Get.snackbar('login failed',data['error']);

    }


    }
    catch(e){
      loading.value = false;

        Get.snackbar('exception', e.toString());
    }

    
  }
  
}