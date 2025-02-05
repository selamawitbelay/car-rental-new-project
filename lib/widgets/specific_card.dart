import 'package:car_rental/utils/utils.dart';
import 'package:flutter/material.dart';

class SpecificsCard extends StatelessWidget{
  final double price;
  final String name;
  final String name2;

  SpecificsCard({ required this.price,  required this.name, required this.name2});
 @override

Widget build(BuildContext context){
  return Container(
     padding: EdgeInsets.all(8), 
      // ignore: unnecessary_null_comparison
      height: price == null ? 80 : 100,
      width: 100,
     decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1),
          borderRadius: BorderRadius.circular(10)),
      // ignore: unnecessary_null_comparison
      child: price == null
          ? Column(
              children: [
                Text(
                  name,
                  style: BasicHeading,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  name2,
                  style: SubHeaging,
                ),
              ],
            )
          : Column(
              children: [
                Text(
                  name,
                  style: BasicHeading,
                ),
                SizedBox(
                  height: 5,
                ),
                //Text(
                  //price.toString(),
                  //style: SubHeaging,
                //),
                SizedBox(
                  height: 5,
                ),
                Text(name2)
              ],
            ),
    );
  }
}
