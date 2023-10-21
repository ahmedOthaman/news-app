

import 'package:flutter/material.dart';
import 'package:newsapp/ee.dart';
import 'package:newsapp/home/home_screen.dart';
import 'package:newsapp/model/NewsResponse.dart';
import 'package:newsapp/provider.dart';
import 'package:newsapp/search_screen.dart';
import 'package:newsapp/theme.dart';
import 'package:newsapp/view.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main() {
  runApp( ChangeNotifierProvider(
    create: (context)=>LangProvider(),
      child: MyApp()));
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<LangProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:HomeScreen.routeName ,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(provider.appLanguage),
      theme: MyTheme.lightTheme,
      routes: {
        HomeScreen.routeName:(context)=>HomeScreen(),
        SearchScreen.routeName:(context)=>SearchScreen(),
        HadthScreen.routeName:(context)=>HadthScreen(),
        ViewDetails.routeName:(context)=>ViewDetails( ),
      },
    );
  }
}
