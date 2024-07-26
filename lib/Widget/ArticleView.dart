
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Model/Article_Model.dart';
import 'package:news_app/Views/WebView.dart';

class ArticleView extends StatelessWidget {
Article_Model article_model;
ArticleView(this.article_model);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: GestureDetector(
        onTap: () {
         Navigator.of(context).push(MaterialPageRoute(builder: (context) => WebView(article_model.link),));
        },
        child: Column(
            children: [     
              Container(
                width: 380,
                height: 200,
                 child:CachedNetworkImage(
                imageUrl: article_model.image ?? '',
                fit: BoxFit.cover,
                placeholder: (context, url) => Center(
                  child: CircularProgressIndicator(
                    color: Colors.red,
                  ),
                ),
                errorWidget: (context, url, error) => Container(
                  color: Colors.grey[300],
                  child: Center(
                    child: Icon(
                      Icons.image,
                      size: 100,
                      color: Colors.grey[700],
                    ),
                  ),
                ),
              ),
            ),
              Text(article_model.title,
               maxLines: 2,
               overflow: TextOverflow.ellipsis
               ,style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold
               ),),
                  Text(article_model.subTitle??"",maxLines: 2,style: TextStyle(
                color: Colors.grey,
                fontSize: 22,
                
               ),)
        
        
            ],
          ),
      ),
    );
  }
}