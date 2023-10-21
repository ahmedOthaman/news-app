import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/api/api_constant.dart';
import 'package:newsapp/api/api_manager.dart';
import 'package:newsapp/theme.dart';

import 'package:webview_flutter/webview_flutter.dart';

import 'model/NewsResponse.dart';

class ViewDetails extends StatefulWidget {
  static const String routeName = 'view';


  @override
  State<ViewDetails> createState() => _ViewDetailsState();
}

class _ViewDetailsState extends State<ViewDetails> {
  @override
  Widget build(BuildContext context) {
   var args = ModalRoute.of(context)?.settings.arguments as News;
    return Scaffold(
      appBar: AppBar(
   centerTitle: true,
        title: Text('News App'),
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.3,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: CachedNetworkImage(
                  imageUrl: args.urlToImage ?? '',
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.3,
                  fit: BoxFit.fill,
                  placeholder: (context, url) =>
                      Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              args.author ?? '',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(fontSize: 14, color: MyTheme.greyColor),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              args.title ?? '',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              args.publishedAt ?? '',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(fontSize: 14, color: MyTheme.greyColor),
              textAlign: TextAlign.end,
            ),
            Text(
              '${args.content}',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(fontSize: 14, color: MyTheme.greyColor),
            ),
            SizedBox(height: 25,),
            TextButton(
              onPressed: (){
                args.url;
              },
                child: Text('url to view article',textAlign: TextAlign.end)),

          ],
        ),
      ),
    );

  }
}
// Column(
// children: [
// Image.network('${args.urlToImage}'),
// Text('${args.author}'),
// Text('${args.publishedAt}'),
// Text('${args.content}'),
//
// ),
