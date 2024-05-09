//import 'package:car_rental/page/File_Picker.dart';
import 'package:car_rental/page/payment_page.dart';
import 'package:flutter/material.dart';
import '../page/payment_page.dart';
//import 'File_Picker.dart';

class bookPage extends StatefulWidget {
  

  @override
  _bookPageState createState() => _bookPageState();
}

class _bookPageState extends State<bookPage> {
  
  DateTime selectedDate = DateTime.now();

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('booking'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        
      ),
      
      body: Center(
        child: Column(
          
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("${selectedDate.toLocal()}".split(' ')[0]),
            SizedBox(height: 20.0,),
            RaisedButton(
              onPressed: () => _selectDate(context),
              child: Text('Select date'),
              
              
            ), 
           
               Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'mobile number cannot be empty';
                } else if (value.length < 10) {
                  return 'Number must be at least 10 digit .';
                }
                return null;
              },
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: 'Mobile Number',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
              ),
            ),
            ), 
              Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'location cannot be empty';
                } else if (value.length < 10) {
                  return 'Number must be at least 10 digit .';
                }
                return null;
              },
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                labelText: 'pick up location',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
              ),
            ),
            ), 
              Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'location cannot be empty';
                } else if (value.length < 10) {
                  return 'Number must be at least 10 digit .';
                }
                return null;
              },
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                labelText: 'drop of location',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
              ),
            ),
            ), 
             Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'location cannot be empty';
                } else if (value.length < 10) {
                  return 'Number must be at least 10 digit .';
                }
                return null;
              },
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                labelText: 'Driver License',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
              ),
            ),
            ), 
              
              Center(
            child: RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PaymentPage()),
                );
              },
              color: Colors.blue,
              padding: EdgeInsets.symmetric(horizontal: 50),
              elevation: 2,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                "payment option",
                style: TextStyle(
                    fontSize: 14, letterSpacing: 2.2, color: Colors.white),
              ),
            ),
          ),
          ],
        ),
        
      ),
       
    );
    
  }
}