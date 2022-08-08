import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexa1/views/detailes.dart';
import 'package:hexa1/views/home.dart';
import 'package:hexa1/views/home.dart';
import 'package:hexcolor/hexcolor.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return  SafeArea(
      child: SafeArea(
        child: Scaffold(
          body:Container(
            padding:const EdgeInsets.only(left: 40 , right: 40),
              color: HexColor("#2F0F79"),
              width: double.infinity,
              height: size.height,
          
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                 SvgPicture.asset("assets/svg/svg1.svg" , fit: BoxFit.fill,),
                 const SizedBox(height: 20,), 
                 const Text("Find your self\noutside." , style: TextStyle(color: Colors.white , fontSize: 36 , fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                 const SizedBox(height: 20,),
                 
                 const Text("Book unique camping experiences on over 300,000 campsites, cabins, RV parks, public parks and more." ,textAlign: TextAlign.center, style: TextStyle(color: Colors.white , fontSize: 14
                    ),
      
                 ),
                 const SizedBox(height: 80,),
      
                 GestureDetector(
                  onTap:(){
                   Navigator.push(
               context,
                MaterialPageRoute(builder: (context) => const Home()),
        );
                  },
                   child: Container(
                    decoration: BoxDecoration(
                      color: HexColor("#F72585"),
                      borderRadius: BorderRadius.circular(30)
                    ),
                    width: size.width/0.5,
                    height:size.width/8 ,
                    
                    child:const Center(child: Text("Explore Now" , style: TextStyle(color: Colors.white),) ,)
                   ),
                 ),
                  
                               
          
                ],
              ),
            ), 
        
         
        ),
      ),
    );
    
  }
}
