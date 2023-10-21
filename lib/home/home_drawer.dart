import 'package:flutter/material.dart';
import 'package:newsapp/theme.dart';

class HomeDrawer extends StatelessWidget {

Function onSideMenuItem ;
static int categories=1;
 static int settinges=2;
HomeDrawer({required this.onSideMenuItem});
  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.1),
            child: Text('News App!',
            style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
          ),
          SizedBox(height: 15,),
          InkWell(
            onTap: (){
              onSideMenuItem(HomeDrawer.categories);
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Icon(Icons.list),
                  SizedBox(width: 15,),
                  Text('Categories',style: Theme.of(context).textTheme.titleMedium,),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: (){
              onSideMenuItem(HomeDrawer.settinges);
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Icon(Icons.settings),
                  SizedBox(width: 15,),
                  Text('Settinges',style: Theme.of(context).textTheme.titleMedium,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
