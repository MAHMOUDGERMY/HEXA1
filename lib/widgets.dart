import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class drawer extends StatelessWidget {
  const drawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      child: Container(
       width: double.infinity,
        color: HexColor("#2F0F79"),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:const [
            Text("HEXA" , style: TextStyle(color : Colors.white , fontSize: 28),),
          ],
        )
      ),
    );
  }
}