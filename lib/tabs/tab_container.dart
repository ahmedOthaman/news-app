import 'package:flutter/material.dart';
import 'package:newsapp/news/news_container.dart';
import 'package:newsapp/tabs/tab_item.dart';

import '../model/SourcesResponse.dart';

class TabContainer extends StatefulWidget {
List<Source>sourcesList ;
TabContainer({required this.sourcesList});

  @override
  State<TabContainer> createState() => _TabContainerState();
}

class _TabContainerState extends State<TabContainer> {
int selectedIndex =0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: widget.sourcesList.length,
        child:Column(
          children: [
          TabBar(
            onTap: (index){
              selectedIndex=index ;
              setState(() {

              });
            },
              isScrollable:true ,
              indicatorColor: Colors.transparent,
              tabs: widget.sourcesList.map((Source) => TabItem(
                  source: Source,
                  isSelected:  selectedIndex==widget.sourcesList.indexOf(Source))).toList(),
          ),
            Expanded(child: NewsContainer(source: widget.sourcesList![selectedIndex])),
          ],
        ) ,
    );
  }
}
