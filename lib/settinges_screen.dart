import 'package:flutter/material.dart';
import 'package:newsapp/provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'language_bottom_sheet.dart';

class SettingesScreen extends StatefulWidget {


  @override
  State<SettingesScreen> createState() => _SettingesScreenState();
}

class _SettingesScreenState extends State<SettingesScreen> {
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<LangProvider>(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(provider.appLanguage=='en'?
            AppLocalizations.of(context)!.english
                :AppLocalizations.of(context)!.arabic
              ,style: Theme.of(context).textTheme.titleMedium,),
          ),
          InkWell(
            onTap: (){
              showLanguageModeBuner();
            },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: MediaQuery.of(context).size.height *0.1,
                decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(25),
                ),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(provider.appLanguage=='en'?
                      AppLocalizations.of(context)!.english
                          :AppLocalizations.of(context)!.arabic
                        ,style: Theme.of(context).textTheme.titleMedium,),
                    ),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showLanguageModeBuner() {
    showModalBottomSheet(
        context: context,
        builder:(context)=>LanguageBottomSheet(),
    );
  }
}

