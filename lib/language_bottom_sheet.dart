import 'package:flutter/material.dart';
import 'package:newsapp/provider.dart';
import 'package:newsapp/theme.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class LanguageBottomSheet extends StatefulWidget{
 

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<LangProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        InkWell(
          onTap: (){
            provider.changeLanguage('en');
          },
          child:provider.appLanguage=='en'?
          getSelectedItemWidget(AppLocalizations.of(context)!.english)
        :getUnSelectedItemWidget(AppLocalizations.of(context)!.english)
        ),
        SizedBox(height: 15,),
        InkWell(
          onTap: (){
            provider.changeLanguage('ar');
          },
            child:provider.appLanguage=='ar'?
            getSelectedItemWidget(AppLocalizations.of(context)!.arabic)
                :getUnSelectedItemWidget(AppLocalizations.of(context)!.arabic)
        ),
      ],
    );
  }

  Widget getSelectedItemWidget(String text) {
   return  Row(
     children: [
       Text(text,style: Theme.of(context).textTheme.titleMedium!.copyWith(
         color: Theme.of(context).primaryColor
       ),
       ),
       Icon(Icons.check),
     ],
   );
  }

   Widget getUnSelectedItemWidget(String text) {
     return Text(text,
         style: Theme.of(context).textTheme.titleMedium!.copyWith(
         color: MyTheme.blueColor
     ),
     );
    }
}


