import 'package:flutter/material.dart';
import 'package:newsapp/category/category_details.dart';
import 'package:newsapp/home/home_drawer.dart';
import 'package:newsapp/model/category_model.dart';
import 'package:newsapp/search_screen.dart';
import 'package:newsapp/settinges_screen.dart';
import 'package:newsapp/theme.dart';

import '../category/category_fragment.dart';

class HomeScreen extends StatefulWidget {

static const String routeName='home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
     return   Stack(
       children: [
         Container(
           color: MyTheme.whiteColor,
           child: Image.asset('assets/images/main_background.png',
           height: double.infinity,
             width: double.infinity,
             fit: BoxFit.cover,
           ),
         ),
         Scaffold(
          appBar: AppBar(
            centerTitle: true,
           leading: Icon(Icons.menu),
           title: Text( selectedCategory==HomeDrawer.settinges?'Settinges':
            selectedCategory==null? ' News App':selectedCategory!.title,
             style:Theme.of(context).textTheme.titleLarge ,
           ),
            actions: [
              IconButton(
                onPressed: (){
                Navigator.of(context).pushNamed(SearchScreen.routeName);
                },
               icon:Icon(Icons.search),
              ),
            ],
    ),
           drawer: Drawer(
             child: HomeDrawer(onSideMenuItem: onSideMenuItem,),
           ),
           body:selestedMenuItem ==HomeDrawer.settinges?
               SettingesScreen() :
           selectedCategory ==null ?
           CategoryFragment(onCategoryClick:onCategoryClick ):
           CategoryDetails(category: selectedCategory!),
         ),
       ],

   );

  }

 CategoryDM? selectedCategory;

 void onCategoryClick(CategoryDM newSelectedCategory) {
    selectedCategory=newSelectedCategory;
    setState(() {

    });
  }
   int selestedMenuItem =HomeDrawer.categories ;
  void onSideMenuItem(int newsSelectedMenuItem ){
    selestedMenuItem =newsSelectedMenuItem;
    selectedCategory =null;
    Navigator.pop(context);
    setState(() {

    });
  }
}
