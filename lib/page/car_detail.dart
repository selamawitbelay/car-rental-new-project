// ignore_for_file: deprecated_member_use

import 'package:car_rental/page/payment_page.dart';
import 'package:flutter/material.dart';
import 'package:car_rental/utils/utils.dart';
import '../widgets/specific_card.dart';
import '../page/book_page.dart';

class CarDetail extends StatelessWidget {
  final String title;
  final double price;
  final String path;
  final String color;
  final String gearbox;
  final String fuel;
  final String model;

  CarDetail(
      {required this.title,
      required this.price,
      required this.path,
      required this.color,
      required this.gearbox,
      required this.fuel,
      required this.model});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        actions: [],
      ),
      body: Column(
        children: [
          Text(title, style: MainHeading),
          Text(model, style: BasicHeading),
          Hero(tag: title, child: Image.asset(path)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SpecificsCard(
                name: 'km/hr',
                price: price * 12,
                name2: 'km/hr',
              ),
              SpecificsCard(
                name: 'model',
                price: price * 12,
                name2: model,
              ),
              SpecificsCard(
                name: 'Color',
                price: price * 12,
                name2: color,
              )
            ],
          ),
          SizedBox(height: 20),
          Text(
            'Detail',
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SpecificsCard(
                name: 'Color',
                price: price * 12,
                name2: color,
              ),
              SpecificsCard(
                name: 'GearBox',
                price: price * 12,
                name2: gearbox,
              ),
              SpecificsCard(
                name: 'Fuel',
                price: price * 12,
                name2: fuel,
              )
            ],
          ),
          SizedBox(height: 10),
          RaisedButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            disabledColor: Theme.of(context).accentColor,
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) =>bookPage()));
            },
            child: Text(
              'Book Now',
              style: TextStyle(fontSize: 20, color: Colors.purple),
            ),
          )
        ],
      ),
    );
  }
}
