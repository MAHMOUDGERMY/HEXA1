import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = [
      {"name":"Wifi"},
      {"name":"Kitchen"},
      {"name":"Shower"},
      {"name":"Toilet"},
      {"name":"Water"},
      {"name":"Parking"},
    ];
    return Scaffold(
      body:  ListView(
          children: [
            Stack(
              children: [
                  SizedBox(
                    width: double.infinity,
                    child: 
                    Image.network("https://images.unsplash.com/photo-1620766165457-a8025baa82e0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bmF0dXJlJTIwb2YlMjBpbmRpYXxlbnwwfHwwfHw%3D&w=1000&q=80" ,fit: BoxFit.cover, ),
                  ),
                   SizedBox(
                    
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      
                      children: [
                       const SizedBox(height: 40,),
                        IconButton(onPressed: (){
                          Navigator.pop(context);
                        },padding:const EdgeInsets.all(10), icon:const Icon(Icons.arrow_back , color: Colors.white, size: 40,)),
                       const SizedBox(height: 20,),
                       const Padding(
                          padding:  EdgeInsets.only(top: 20 , left: 20 , right: 20),
                          child:  Text("Sandy Ridge Camping" ,style: TextStyle(color: Colors.white , fontSize: 30),),
                        ),
                      const  Padding(
                          padding:  EdgeInsets.only(top: 5 ,left: 20),
                          child:  Text("Canton" ,style: TextStyle(color: Colors.grey , fontSize: 20),),
                        ),
                        const SizedBox(height: 40,),

                        Expanded(
                          child: Container(

                            decoration:const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only( topLeft:Radius.circular(50) , topRight:Radius.circular(50) )
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 40),
                              child: ListView(
                                

                                children: [
                                 const SizedBox(height: 20,),
                                   Center(
                                    child: Container(color: Colors.grey,width: 50 , height: 5, )),
                                    const SizedBox(height: 20,),
                                    const Text("Customers Rating" , style:TextStyle(color: Colors.grey)),
                                    const SizedBox(height: 5,),
                                    Row(
                                     mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                        Icon(Icons.star , color: HexColor("#FFC107"), size: 30,),
                                                        Icon(Icons.star , color: HexColor("#FFC107"), size: 30,),
                                                        Icon(Icons.star , color: HexColor("#FFC107"), size: 30,),
                                                        Icon(Icons.star , color: HexColor("#FFC107"), size: 30,),
                                                        Icon(Icons.star , color: HexColor("#FFC107"), size: 30,),
                                                       const SizedBox(width: 10,),
                                                       const Text("84 Reviews" , style:TextStyle(color: Colors.grey)),
                                                        ],),
                                    const SizedBox(height: 40,),
                                    const Text("Details" , style:TextStyle(color: Colors.grey)),
                                    const SizedBox(height: 10,),
                                    

                                    const Text("Thank you for checking out Sandy Ridge Camping. We have five primitive camping spots providing privacy and serenity.  Site#1 is located in a clearing of trees and overlooks our small pond." , style:TextStyle(color: Colors.black)),
                                    const SizedBox(height: 40,),
                                    InkWell(onTap: (){},child: const Text("Read More", style:TextStyle(color: Colors.red))),
                                    const SizedBox(height: 40,),
                                    const Text("Amenities" , style:TextStyle(color: Colors.grey)),
                                    Container(
                                      height: 200,
                                      
                                      
                                      
                                      child: GridView.builder(
                                        itemCount: data.length,
                                        padding: EdgeInsets.all(0),
                                         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 3,
                                          crossAxisSpacing: 20,
                                          mainAxisSpacing: 5
                         ),
                                         itemBuilder: (context , index)=> Container(
                        width: 100,
                            decoration: BoxDecoration(
                              color:Colors.grey[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            margin:const EdgeInsets.all(10),
                              
                             
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                              SvgPicture.asset("assets/svg/${data[index]['name']}.svg"),
                               const SizedBox(height: 10,),
                                Text("${data[index]['name']}", style:const TextStyle(color: Colors.grey))
                              ],
                            ),
                              
                            ) ),
                                    ),const SizedBox(height: 40,),

                                    
                                       Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        
                                        children: [
                                         const Text('40/night', style: TextStyle(color: Colors.grey , fontSize: 15)),
                                          const SizedBox(width: 10,),
                                          Container(
                    decoration:  BoxDecoration(
                      color: HexColor("#F72585"),
                      borderRadius: BorderRadius.circular(30)
                    ),
                    width: 180,
                    height:MediaQuery.of(context).size.width/8 ,
                    
                    child:const Center(child: Text("Request to book" , style: TextStyle(color: Colors.white  ),) ,)
                   ),
                                        ],
                                      ),const SizedBox(height: 60,),
                                      
                                    

                                    
                                ],
                              ),
                            ),
                            
                          ),
                        )
                      ],
                    ),
                  )
                  
              ],
            ),
          ],
        ),

      
    );
  }
}