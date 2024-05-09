//import 'package:flutter/material.dart';

class CarItem {
  final String title;
  final double price;
  final String path;
  final String color;
  final String gearbox;
  final String fuel;
  final String model; 


   CarItem(
    { required this.title, required this.price, required this.path, required this.color,required this.gearbox, required this.fuel, required this.model});

}
CarsList allCars=CarsList(cars: [
  CarItem(
  title:'Honda CR-V ',
  price:333,
  color:'dark',
  gearbox:'4',
  fuel:'18L',
  model:'hoda',
  path:'assets/land_rover_0.png'
  ),
  CarItem(
  title:'Lamborghini Diablo',
  price:333,
  color:'dark',
  gearbox:'4',
  fuel:'18L',
  model:'honda',
  path:'assets/citroen_1.png'
  ),
  CarItem(
  title:'Ferrari Testarossa',
  price:333,
  color:'dark',
  gearbox:'4',
  fuel:'18L',
  model:'honda',
  path:'assets/land_rover_1.png'
  ),
  CarItem(
  title:'Lamborghini Huracán',
  price:333,
  color:'dark',
  gearbox:'4',
  fuel:'15L',
  model:'honda',
  path:'assets/ford_0.png'
  ),
  CarItem(
  title:'BMW',
  price:333,
  color:'dark',
  gearbox:'4',
  fuel:'18L',
  model:'honda',
  path:'assets/ferrari_spider_488_3.png'
  ),
  CarItem(
  title:'Ford',
  price:333,
  color:'dark',
  gearbox:'4',
  fuel:'14L',
  model:'honda',
  path:'assets/camaro_1.png'
  ),
  CarItem(
  title:'Suzuki',
  price:333,
  color:'dark',
  gearbox:'4',
  fuel:'13L',
  model:'Porsche 911 Carrera',
  path:'assets/acura_1.png'
  ),
  CarItem(
  title:'Jeep Gladiator',
  price:333,
  color:'dark',
  gearbox:'4',
  fuel:'155L',
  model:'Jensen Interceptor',
  path:'assets/citroen_1.png'
  ),
  
]);

class CarsList{
  List<CarItem>cars;
  CarsList({required this.cars});
  

}