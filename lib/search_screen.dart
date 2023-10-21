import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/api/api_manager.dart';
import 'package:newsapp/category/category_details_view_model.dart';
import 'package:newsapp/scaerch_item.dart';
import 'package:newsapp/theme.dart';

import 'model/NewsResponse.dart';
import 'model/search.dart';

class SearchScreen extends StatefulWidget {
static const String routeName='search';


  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {




  @override
  Widget build(BuildContext context) {
    CategoryDetailsViewModel viewModel =CategoryDetailsViewModel();

    return Scaffold(
      backgroundColor: Colors.grey[200],
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              margin: EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: MyTheme.whiteColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child:CustomFormField() ,

            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                  itemBuilder:(context ,index){
                    return ListTile(
                     title: Text(''),
                     subtitle: Text('ahmed othman'),
                    );
                  },

              ),
            ),
          ],
        ),
      );
  }




}
