import 'package:car_rental/constant.dart';
import 'package:car_rental/components/defaultAppBar.dart';
import 'package:car_rental/components/defaultBackButton.dart';
//import 'package:car_rental/screens/welcome.dart';

import 'package:car_rental/widgets/headerLabel.dart';
import 'package:flutter/material.dart';

import '../components/defaultButton.dart';

//import '../screens/welcome.dart';

class PaymentPage extends StatefulWidget {
  PaymentPage({Key? key}) : super(key: key);

  @override
  _PaymentPageState createState() => _PaymentPageState();
  
}

class _PaymentPageState extends State<PaymentPage> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kWhiteColor,
        appBar: DefaultAppBar(
          title: 'Payment',
          child: DefaultBackButton(),
        ),
        body: Column(children: [
          HeaderLabel(
            headerText: 'Choose your payment method',
          ),
          Expanded(
            child: ListView.separated(
              itemCount: paymentLabels.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Radio(
                    activeColor: kPrimaryColor,
                    value: index,
                    groupValue: value,
                    onChanged: (i) => setState(() => value = (index)),
                  ),
                  title: Text(
                    paymentLabels[index],
                    style: TextStyle(color: kDarkColor),
                  ),
                  trailing: Icon(paymentIcons[index], color: kPrimaryColor),
                );
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
            ),
          ),
          DefaultButton(
            btnText: 'Select',
            onPressed: () {
              
            },
          )
        ]));
  }
}
