import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'form.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  bool isPassword = true;
  @override
  Widget build(BuildContext context) {
    final url = "https://cdn.pixabay.com/photo/2016/07/18/10/16/model-1525629_1280.jpg";
    return Scaffold(
      appBar: AppBar(
         title: const Text("Mon Profile"),
         leading: IconButton(onPressed: null , 
         icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
         )
         ) ,
         actions: [
          IconButton(
                     icon: Icon(
          Icons.settings,
          color: Colors.white,
         ),
            
            onPressed: null,)
         ],
        ) ,
body: Container(
  padding: EdgeInsets.only(
    left: 15 , top: 15  ,right: 15),
    child: GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
     child: ListView(
      children: [
        Center(
          child: Stack(
            children: [
              Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                  border: Border.all(width:4,color:Colors.white),
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 2, blurRadius: 10,
                      color: Colors.black.withOpacity(0.1)
                      )
                  ],
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(url)
                  )
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child:
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 4,
                      color: Colors.white,
                    ),
                    color: Colors.blue,
                  ),
                child: Icon(
                  Icons.edit,
                  color: Colors.white,

                ),
                )
                )
            ],
          ),
        ),
        SizedBox(height: 30),
        monformulaire("Nom et prenoms", "Nom et prenoms", false),
        monformulaire("Email", "test@gmail.com", false),
        monformulaire("Nom et prenoms", "*******", true),
        SizedBox(height: 30),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          OutlinedButton(onPressed: (){},
           child: Text('ANNULER',
           style: TextStyle(
            fontSize: 15,
            letterSpacing: 2,
            color: Colors.black,
          )),
          style: OutlinedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 50),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
          ) ,
          ),
        ElevatedButton(onPressed: (){}, 
        child: Text("SAVE",
        
           style: TextStyle(
            fontSize: 15,
            letterSpacing: 2,
            color: Colors.white,
          )),
          style: ElevatedButton.styleFrom(          
            padding: EdgeInsets.symmetric(horizontal: 50),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
       
        
        ))

        ],
      )  
      ],
     ), 
    ),
),        

      );
  }


}