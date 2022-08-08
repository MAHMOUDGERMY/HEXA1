import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexa1/views/detailes.dart';
import 'package:hexa1/widgets.dart';
import 'package:hexcolor/hexcolor.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
static var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {

    final GlobalKey<ScaffoldState>? _scaffoldkey = new GlobalKey();
    
    return Scaffold(
      resizeToAvoidBottomInset: false,
      
      key: _scaffoldkey,
      drawer: const drawer(),
      backgroundColor: HexColor("#2F0F79"),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            backgroundColor: HexColor("#2F0F79"),
            elevation: 0, 
            stretch: true,
            floating: true,
            expandedHeight: MediaQuery.of(context).size.height/3,
            flexibleSpace:FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              background: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                 Padding(
                          padding: const EdgeInsets.only(top: 25 , left: 10 , bottom: 10 , right: 10 ),
                          child: IconButton( icon: SvgPicture.asset("assets/svg/menu.svg" ),onPressed: (){
                            _scaffoldkey!.currentState!.openDrawer();
                            print("drawerController");
                
                          }, ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 10 , bottom: 20 , right: 10),
                          child: Row(
                    children: [
                      SvgPicture.asset("assets/svg/man.svg" , width: 45,),
                     const SizedBox(width:10),
                     
                              
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:const [
                            Text("Welcome" , style: TextStyle(color: Colors.grey)),
                            Text("Mahmoud Germy" , style: TextStyle(color: Colors.white))
                              
                          ],
                      ),
                      const Spacer(),
                       
                          
                           Stack(
                            alignment: Alignment.topRight,
                            children:[
                            SvgPicture.asset("assets/svg/notify.svg"),
                            Container(
                              decoration: BoxDecoration(
                                color:Colors.red,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              width: 12,
                              height: 12,
                              
                            )
                       
                            ] ),
                       
                    ],
                  ),
                        ),

                        Padding(
                        padding: const EdgeInsets.only(bottom: 5 , right: 10, left: 10),
                        child: Form(
                          key: formKey,
                          child: TextFormField(
                            
                            style:const TextStyle( color: Colors.black),  
                            decoration: InputDecoration(
                              hintText: "search text",
                              hintStyle:const TextStyle(color: Colors.grey),
                              prefixIcon:const Icon(Icons.search , color: Colors.grey),
                              filled: true,
                              fillColor: Colors.white,
                              border:OutlineInputBorder(borderRadius: BorderRadius.circular(50)) ,
                            ),
                          ),
                        ),
                      ),




              ],
            ),
            )
             
          ),
          SliverToBoxAdapter(
            child: Container(
              color: HexColor("#2F0F79"),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                     padding: EdgeInsets.all(10.0),
                     child: Text("Discover" , style :TextStyle(color: Colors.white , fontSize: 28 , fontWeight: FontWeight.bold)),
                               ),
                  Container(
                    height: 140,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                       itemCount: 20,itemBuilder: ((context, index) =>Container(
                        width: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            margin:const EdgeInsets.all(10),
                              
                             
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                              SvgPicture.asset("assets/svg/item1.svg"),
                               const SizedBox(height: 10,),
                               const Text("data", style: TextStyle(color: Colors.grey))
                              ],
                            ),
                              
                            ) ),
                  ),
                  
          ),
            
                ],
              ),
            )),
            SliverToBoxAdapter(
              child: Container(
                
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(50) , topRight: Radius.circular(50)),

                  ),
                  child: Padding(
                            padding: const EdgeInsets.only(left: 40, top: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                               Center(
                                 child: Container(
                                 
                                  color: Colors.grey,height: 3, width: MediaQuery.of(context).size.width/5,),
                               ),
                               const SizedBox(height: 20,),
                                const Text("Popular Destinations" , style: TextStyle(color: Colors.grey)),
                                const SizedBox(height: 20,),
                                Container(
                                  height: 300,
                                  child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 10,
                                itemBuilder: (context , index) => Container(
                                    
                                    
                                    decoration: BoxDecoration(
                                              
                                              borderRadius: BorderRadius.circular(20),
                                              image: const DecorationImage(image: NetworkImage("https://i.pinimg.com/originals/50/df/34/50df34b9e93f30269853b96b09c37e3b.jpg"),fit: BoxFit.cover)
                                              
                                            ),
                                    margin:const EdgeInsets.only(top: 10 , bottom: 30,right: 10),
                                    
                                    child: InkWell(
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => Details(),));
                                      },
                                      child: Stack(
                                        
                                        
                                          alignment: Alignment.centerLeft,
                                          
                                          children: [
                                            
                                              Container(
                                                width: 200,
                                                decoration:  BoxDecoration(
                                                  borderRadius: BorderRadius.circular(20),
                                                  gradient:LinearGradient(
                                                  begin: Alignment.bottomCenter,
                                                  end: Alignment.topCenter,
                                                    
                                                  colors: [
                                                    Colors.black.withOpacity(0.9),
                                                    Colors.white.withOpacity(0),
                                                    
                                                  ]
                                                ),
                                                ),
                                              ),
                                              Positioned(
                                                top: 30,
                                                child: Container(
                                                  padding: EdgeInsets.all(10),
                                                  decoration:  BoxDecoration(
                                                     color: HexColor("#F72585"),
                                                     borderRadius:const BorderRadius.only(topRight: Radius.circular(15) , bottomRight: Radius.circular(15)
                                                     )
                                                  ),
                                                 
                                                  child:const Text("40/night" , style: TextStyle(color: Colors.white)),
                                                ),
                                              ),
                                              Container(
                                                width: 200,
                                                padding:const EdgeInsets.all(10),
                                                alignment: Alignment.bottomCenter,
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                children: [
                                                 const Text("Sandy Ridge Camping", style: TextStyle(color: Colors.white)),
                                                 const Text("Canton", style: TextStyle(color: Colors.grey)),
                                                 const SizedBox(height: 10,),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                    Icon(Icons.star , color: HexColor("#FFC107"), size: 20,),
                                                    Icon(Icons.star , color: HexColor("#FFC107"), size: 20,),
                                                    Icon(Icons.star , color: HexColor("#FFC107"), size: 20,),
                                                    Icon(Icons.star , color: HexColor("#FFC107"), size: 20,),
                                                    Icon(Icons.star , color: HexColor("#FFC107"), size: 20,),
                                                    ],),
                                                   const Text("84 Reviews", style: TextStyle(color: Colors.grey)),
                                                    
                                                ],
                                              ))
                                              
                                            
                                          ],
                                      ),
                                    ),
                                  ),
                                ))
                              ]
                            ),
                          ),
                
                
              ),
            )
          
        ],
      ),
    );
  }
}