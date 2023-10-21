
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/model/NewsResponse.dart';
import 'package:newsapp/theme.dart';
import 'package:newsapp/view.dart';

class NewsItem extends StatelessWidget {
News news;
NewsItem({required this.news});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height*0.3,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child:InkWell(
                onTap: (){
                  Navigator.pushNamed(context, ViewDetails.routeName,
                  arguments:News(
                    urlToImage: news.urlToImage,
                    author: news.author,
                    title: news.title,
                    content: news.content,
                    publishedAt: news.publishedAt,
                    url: news.url,
                  ));
                },
                child: CachedNetworkImage(
                imageUrl: news.urlToImage ??'',
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height*0.3,
                  fit: BoxFit.fill,
                  placeholder: (context, url) => Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Text(news.author ??'',
        style: Theme.of(context).textTheme.titleSmall!.copyWith(
          fontSize: 14,
          color: MyTheme.greyColor
        ),
          ),
          SizedBox(height: 10,),
          Text(news.title??'',style: Theme.of(context).textTheme.titleMedium!.copyWith(
            fontWeight: FontWeight.w400,
          ),),
          SizedBox(height: 10,),
          Text(news.publishedAt ??'',
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                fontSize: 14,
                color: MyTheme.greyColor
            ),
            textAlign: TextAlign.end,),

        ],
      ),
    );
  }
}
