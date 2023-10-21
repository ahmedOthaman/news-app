import 'package:flutter/material.dart';
import 'package:newsapp/ee.dart';
import 'package:newsapp/model/category_model.dart';
import 'package:newsapp/theme.dart';
import 'package:provider/provider.dart';

import '../provider.dart';

class CategoryItem extends StatelessWidget {

  CategoryDM category;
  int index ;
  CategoryItem({required this.category,required this.index});

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<LangProvider>(context);
    return  Container(
      decoration: BoxDecoration(
        color: category.color,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
          bottomRight:Radius.circular(index %2==0 ?0:20),
          bottomLeft: Radius.circular(index %2==0?20:0),
        ),
      ),
      child: Column(
        children: [
          Image.asset(category.image,height: MediaQuery.of(context).size.height *0.15,),
          Text(category.title,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            color: MyTheme.whiteColor,
          ),
          ),
        ],
      ),
    );
  }
}
