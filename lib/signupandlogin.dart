import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getex/logincontroller.dart';

class LogInScreen extends StatelessWidget {
  LogInScreen({super.key});
  Logincontroller controller = Get.put(Logincontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(hintText: 'Email'),
              controller: controller.emailController.value,
            ),
            TextFormField(
              decoration: InputDecoration(hintText: 'Password'),
              controller: controller.passwordController.value,
            ),
            SizedBox(
              height: 50,
            ),
            
          Obx((){
            return  InkWell(
              onTap: (){
                controller.loginApi();
              },
              child: controller.loading.value ? CircularProgressIndicator() :  Container(
                height: 45,
                color: Colors.grey,
                child: Center(
                  child: Text(
                    'login',
                  ),
                ),
              ),
            );
          })
          ],
        ),
      ),
    );
  }
}
