import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getex/secondpage.dart';
import 'package:getex/themechange.dart';

// ignore: must_be_immutable
class MyHomePage extends StatefulWidget {
   MyHomePage({super.key, });
 
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> { 
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        shape: RoundedRectangleBorder(
      
        ),
        title: Text("Getx",
        textAlign: TextAlign.center,),
        leading: Align(alignment: Alignment.center,),
        actions: [
          IconButton(
            icon :Icon(
          Get.isDarkMode ? Icons.dark_mode : Icons.dark_mode_outlined,
        ),
        onPressed: (){
          Get.changeTheme(
            Get.isDarkMode ? appThemeData : darkappThemeData,
          );
        },
          )
          
        ],
      ),
      

      body: Container(
        height: Get.height*1,
        
        decoration: BoxDecoration(
          color: Colors.yellow[50],
          
        ),
        child: Column(
        
          children: [
            SizedBox(height: 10,),
            Card(
              child: ListTile(
                tileColor:
               Theme.of(context).primaryColor,

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                title: Text("GetX dialogue alert"),
                subtitle: Text('dialogue box'),
                onTap: () {
                  Get.defaultDialog(
                    contentPadding: EdgeInsets.all(8.0),
                    titlePadding: EdgeInsets.only(top: 20),
                    title: 'delete chat',
                    middleText: "are you sure you want to delete this chat",
                    confirm: TextButton(onPressed: (
                      
                    ){
                      Get.back()
        ;                  }, child: Text('ok'),
                    
                  ),
                  cancel: TextButton(onPressed: (){
                    Get.back();
                  }, child: Text('cancel'))
                  );
                  
                }),
                
            ),
            Card(
              child: ListTile(
                tileColor: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
                  
                  borderRadius: BorderRadius.circular(10)
                ),
                title: Text('Getx change theme'),
                subtitle: Text('change theme through getx'),
                onTap: () {
                  Get.bottomSheet(
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[200],
                        borderRadius: BorderRadius.circular(13)
                      ),
                      child: Column(children: [
                        ListTile(
                          leading: Icon(Icons.dark_mode_outlined),
                          title: Text("dark theme"),
                          onTap: (){
                            Get.changeTheme(darkappThemeData);
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.light_mode_outlined),
                          title: Text("light theme"),
                          onTap: (){
                            Get.changeTheme(
                              appThemeData
                            );
                          },
                        )
        
        
                      ],
                      ),
                    )
                  );
                  
                }),
            ),
            Center(
              child: ElevatedButton(onPressed: (){
                Get.toNamed('/secondpage');
              },
              child: Text("go to next page" ,
              style: Theme.of(context).textTheme.bodyLarge),
              ),
            ),
          ListTile(
            title: Text('message'.tr,),
            subtitle: Text('name'.tr),
          ),
          SizedBox(height: 8,),
                Row(children: [
                  OutlinedButton(onPressed: (){
                    Get.updateLocale(Locale('en','US'));
                  }, child: Text("English")),
                  SizedBox(width: 8,),
                   OutlinedButton(onPressed: (){
                    Get.updateLocale(Locale('ur',"PK"));
                   }, child: Text("Urdu"))
                ],)
          ],
          
          
        ),
      ),
    );
  }
}