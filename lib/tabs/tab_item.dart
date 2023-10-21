import 'package:flutter/material.dart';
import 'package:newsapp/model/SourcesResponse.dart';
import 'package:newsapp/theme.dart';

class TabItem extends StatelessWidget {

Source source ;
bool isSelected;
TabItem({required this.source,required this.isSelected});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:12),
      padding:  EdgeInsets.symmetric(vertical: 12,horizontal: 18),
      decoration: BoxDecoration(
        borderRadius:   BorderRadius.circular(24),
        border: Border.all(
            width: 3,
          color: Theme.of(context).primaryColor,
        ),
        color:  isSelected ? Theme.of(context).primaryColor :Colors.transparent,
      ),
      child: Text(source.name ??'',
      style:isSelected? Theme.of(context).textTheme.titleMedium!.copyWith(
        color: MyTheme.whiteColor
      ):Theme.of(context).textTheme.titleMedium!.copyWith(
    color: Theme.of(context).primaryColor,
      ),
    ),
    );
  }
}
