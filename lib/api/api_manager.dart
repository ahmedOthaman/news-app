import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:newsapp/api/api_constant.dart';
import 'package:newsapp/model/NewsResponse.dart';
import 'package:newsapp/model/SourcesResponse.dart';

class ApiManager{

  static Future<SourceResponse> getSources(String categoryId)async{
    /*
     https://newsapi.org/v2/top-headlines/sources?apiKey=c2a65035c97344b695c425501b45fa6f
     */
    Uri url=Uri.https(ApiConstant.baseUrl,ApiConstant.sourceApi,{
      'apiKey':'c2a65035c97344b695c425501b45fa6f',
      'category':categoryId,
    });
    try{
      var response= await http.get(url);
      var bodyString= response.body;
      var json=  jsonDecode(bodyString);
      return  SourceResponse.fromJson(json);
    }catch(e){
      throw e ;
    }

  }

  static Future<NewsResponse> getNewsBySourceId(String sourceId)async {
    /*
    https://newsapi.org/v2/everything?q=bitcoin&apiKey=c2a65035c97344b695c425501b45fa6f
     */
    Uri url=Uri.https(ApiConstant.baseUrl,ApiConstant.newsApi,{
      'apiKey':'c2a65035c97344b695c425501b45fa6f',
      'sources':sourceId
    });
    try{
      var response= await http.get(url);
      var bodyString= response.body;
      var json=jsonDecode(bodyString);
      return NewsResponse.fromJson(json);
    }catch(e){
      throw e ;
    }

  }

  static Future<NewsResponse>  getSearchItem(String query)async{
   /*
    https://newsapi.org/v2/everything?q=bitcoin&apiKey=c2a65035c97344b695c425501b45fa6f
     */

   Uri url=Uri.https(ApiConstant.baseUrl,ApiConstant.newsApi,{
     'apiKey':'c2a65035c97344b695c425501b45fa6f',
     'q':query,
   });try{

     var response=await http.get(url);
     var bodyString= response.body;
     var json=jsonDecode(bodyString);
     return NewsResponse.fromJson(json);

   }catch(e){
     throw e;
   }


 }




}