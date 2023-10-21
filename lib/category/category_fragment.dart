import 'package:flutter/material.dart';
import 'package:newsapp/category/category_item.dart';
import 'package:newsapp/model/category_model.dart';
import 'package:newsapp/provider.dart';
import 'package:provider/provider.dart';

class CategoryFragment extends StatelessWidget {

var categoriesList =CategoryDM.getCategory();
Function onCategoryClick;
CategoryFragment({required this.onCategoryClick});
  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Pick your category \nof interest',
          style: Theme.of(context).textTheme.titleMedium,
          ),
         SizedBox(height: 15,),
         Expanded(
           child: GridView.builder(
               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                 crossAxisCount: 2,
                 crossAxisSpacing: 15,
                 mainAxisSpacing: 15,
               ),
               itemBuilder: (context ,index){
                 return InkWell(
                   onTap: (){
                     onCategoryClick(categoriesList[index]);
                   },
                     child: CategoryItem(category:categoriesList[index] , index: index));
               },
             itemCount: categoriesList.length,
           ),
         ),
        ],
      ),
    );
  }
}
