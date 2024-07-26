import 'package:flutter/material.dart';
import 'package:news_app/Model/CategoryModel.dart';
import 'package:news_app/Widget/NewsListViewsBuilder.dart';

class CategoryCard extends StatelessWidget {
CategoryModel model;
CategoryCard(this.model);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => NewsListViewsBuilder(model.nameCategory))),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
                    color: model.colorCategory,
        
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,height: 100,
                  child: Image.asset(model.imageCategory,fit: BoxFit.cover,))
                ,Text(model.nameCategory,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}