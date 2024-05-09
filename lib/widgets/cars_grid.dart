import 'package:flutter/material.dart';
import 'package:car_rental/utils/utils.dart';
import '../models/Cars.dart';
import '../page/car_detail.dart';

class CarsGrid extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: allCars.cars.length,
      itemBuilder:(ctx,i)=>Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: (){
             Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=> CarDetail(
               title:allCars.cars[i].title,
               model:allCars.cars[i].model,
               fuel:allCars.cars[i].fuel,
               price:allCars.cars[i].price,
               path:allCars.cars[i].path,
               gearbox:allCars.cars[i].gearbox,
               color:allCars.cars[i].color,

             )));
          },
          child: Container(
            margin:EdgeInsets.only(top: i.isEven ? 15:15, bottom: i.isEven? 15:15
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5 ,spreadRadius:1
                  
                ),
              ]
            ),
            child: Column(
              children: [
                Hero(
                  tag: allCars.cars[i].title,
                  child: Image.asset(allCars.cars[i].path)),
                Text(allCars.cars[i].title,
                style:BasicHeading),
        
                //Text((allCars.cars[i].price).toString(),
                //style: SubHeaging),
                // Text(''),
              ],
            )
          ),
        ),
      ),
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      
   

    );
  
}

}