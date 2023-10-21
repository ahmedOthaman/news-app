import 'package:flutter/material.dart';
import 'package:newsapp/api/api_manager.dart';

import '../model/NewsResponse.dart';

class NewsContainerViewModel extends ChangeNotifier{

List<News>? newsList;
String? errorMessage;
void getNewsBySourceId (String sourceId) async {
         newsList=null;
         errorMessage=null;
         notifyListeners();

  try{
    var response=await ApiManager.getNewsBySourceId(sourceId);
    if(response.status=='error'){
    errorMessage=response.message;
    }else{
      newsList=response.articles;
    }
  }catch(e){
    errorMessage='error loading news list.';
  }
  notifyListeners();
}
}