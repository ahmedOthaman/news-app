 import 'package:flutter/cupertino.dart';

class LangProvider extends ChangeNotifier{

  String appLanguage ='en';

  void changeLanguage (String newLang){
    if(appLanguage==newLang){
      return ;
    }else{
      appLanguage =newLang;
    }
    notifyListeners();
  }

}