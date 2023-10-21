 import 'dart:ui';

import 'package:newsapp/theme.dart';

class CategoryDM{
   String id;
   String title;
   String image;
   Color color;

   CategoryDM({required this.id ,required this.title,required this.image ,required this.color});

/*
   business entertainment general
   health science sports technology
 */

static List<CategoryDM> getCategory (){
   return [
      CategoryDM(id:'sports' , title:'Sports', image: 'assets/images/sports.png', color: MyTheme.redColor,),
      CategoryDM(id:'general' , title:'General', image: 'assets/images/politics.png', color: MyTheme.darkBlueColor,),
      CategoryDM(id:'health ' , title:'Health ', image: 'assets/images/health.png', color: MyTheme.binkColor,),
      CategoryDM(id:'business' , title:'Business', image: 'assets/images/business.png', color: MyTheme.brownColor,),
      CategoryDM(id:'science' , title:'Science', image: 'assets/images/science.png', color: MyTheme.yellowColor,),
      CategoryDM(id:'entertainment', title:'Entertainment', image: 'assets/images/environment.png', color: MyTheme.blueColor,),
      CategoryDM(id:'technology', title:'Technology', image: 'assets/images/politics.png', color: MyTheme.darkBlueColor,),
   ];
}
 }
