import 'package:flutter/material.dart';
import 'package:newsapp/api/api_manager.dart';
import 'package:newsapp/model/NewsResponse.dart';
import 'package:newsapp/model/search.dart';
import 'package:newsapp/search_screen.dart';

class CustomFormField extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType:TextInputType.text,
      validator: (String? value){
        if(value==null||value.isEmpty){
          return 'Search Must Not By Empty';
        }
        return null;
      },
      onFieldSubmitted: (value)async{
        NewsResponse newsResponse= await  ApiManager.getSearchItem(value);
      print('moagsvc hwvhirhivoh');
           print(newsResponse.status);
      },
      decoration: InputDecoration(
        hintText: 'search',
        suffixIcon: Icon(Icons.search),
      ),
    );
  }

}
