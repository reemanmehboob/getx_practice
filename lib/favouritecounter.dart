

import 'package:get/get.dart';

class FavouriteCounter extends GetxController{
  RxList<String> fruits = ['apple','mango','banana','grapes'].obs;
  RxList tempfruits = [].obs;
  addtofavourites(String Value){
    tempfruits.add(Value);
  }
  removefromfavourites(String value){
    tempfruits.remove(value);
  }
}