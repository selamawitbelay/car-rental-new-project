// ignore: file_names
import 'package:flutter/material.dart';
import 'package:car_rental/utils/utils.dart';
import 'package:car_rental/widgets/NavBar.dart';
//import 'package:provider/provider.dart';
import '../widgets/Cars_grid.dart';
//import 'package:car_rental/provider/navigation_provider.dart';



class CarsOverViewScreen extends StatelessWidget{
  @override

  Widget build(BuildContext context){
  return Scaffold(
    drawer: NavBar(),
    backgroundColor:Colors.white,
    appBar: AppBar(
      centerTitle: true,
      elevation:0,
      title:Text('Moged Car Rental Solutions',style:SubHeaging),
      ),
      
    
    body:ListView(
      children: [
       
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: CarsGrid (),
    ) 
      ],
    ),
  );

  }

}


