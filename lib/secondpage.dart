import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getex/favouritecounter.dart';


class SecondPage extends StatefulWidget {
   SecondPage({super.key, });
  

  @override
  State<SecondPage> createState() => _SecondPageState();

}

class _SecondPageState extends State<SecondPage> {
  FavouriteCounter controller = Get.put(FavouriteCounter());
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: controller.fruits.length,
      itemBuilder: (context, index) {
        return Column(
          children: [

            Card(
              child: ListTile(
                onTap: (){
                  if(controller.tempfruits.contains(controller.fruits[index].toString())){
                    controller.removefromfavourites(controller.fruits[index].toString());
                  }
                  else{
                    controller.addtofavourites(controller.fruits[index].toString());
            
                  }
                  
                },
                
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(controller.fruits[index].toString()),
                    
                  ],
                  
            
                ),
                trailing: Obx(() => Icon(Icons.favorite , color : controller.tempfruits.contains(controller.fruits[index].toString()) ? Colors.red:  const Color.fromARGB(255, 250, 237, 237) ) ,)
                 
              ),
            ),
            Container(
            child: ElevatedButton(
          onPressed: (){
                 Get.toNamed('/thirdpage', arguments: ['reeman','mehboob']);
                 
          },
          child: Text("go to third page"),
          ))
          ],
        );
          
        },
        

        
      ),
    );
  }
}