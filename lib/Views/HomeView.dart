import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/Model/CategoryModel.dart';
import 'package:news_app/Widget/CategoryCard.dart';
import 'package:news_app/Widget/DrawerWidget.dart';

class HomeView extends StatelessWidget {
    HomeView({super.key});
    List <CategoryModel> CategoryList=[
  const CategoryModel("sports","assets/football.png",Color(0xffc91c22)),
  const CategoryModel("technology","assets/pda.png",Color(0xff003e90)),
  const  CategoryModel("health","assets/heartbeat.png",Color(0xffed1e79)),
  const CategoryModel("general","assets/science.png",Color(0xfff3d352)),
  const CategoryModel("business","assets/growth.png",Color(0xffcf7e48)),
  const CategoryModel("entertainment","assets/world.png",Color(0xff4882cf)),
 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       surfaceTintColor: Colors.white,
       backgroundColor: Color(0xffda6545),
                
        title: const Text("News App",
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)             
            ),
      centerTitle: true,
    
     
      ),
      backgroundColor: Colors.white,
      body: Stack(
        
        children: [
          Positioned.fill(
         child: Container(
            height: MediaQuery.of(context).size.height,
            child: Image.asset("assets/background.jpg",fit: BoxFit.fill,),
          )),
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: GridView.builder(
              itemCount: CategoryList.length
              ,gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 1) , itemBuilder:(context, index) {
             return CategoryCard(CategoryList[index]);
            },),
          )

          
        ],
      ),
      drawer: DrawerWidget()
      
    );
  }
}