import 'package:flutter/material.dart';
import 'package:news_app/Views/HomeView.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Colors.white,


        child: Column(
          children: [
            Container(
              height: 130,
              color: Color(0xffda6545),
              width: double.infinity,
              child: Center(
                child: Text("News App",style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
                ),
              )
            ),
                 Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                alignment: AlignmentDirectional.topStart,
                child: TextButton.icon(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomeView(),));
                }, icon: Icon(Icons.list,color: Color(0xffda6545),),
                label: Text("Categories",style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),),
                 ),
              ),
            )
            ],
           
      
        ),
      );
  }
}