import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_one/widgets.dart';

import 'checkboxfield.dart';

class TravelItemShort extends StatefulWidget {
  const TravelItemShort({super.key});

  @override
  SelectionChoice createState() => SelectionChoice();
}


class SelectionChoice extends State<TravelItemShort>{

  //Filling the list with reminders up
  final inserts = [
    CheckBoxField(title: 'Passport'),
    CheckBoxField(title: 'Wallet'),
    CheckBoxField(title: 'Drivers license'),
    CheckBoxField(title: 'Water'),
    CheckBoxField(title: 'Sunscreen'),
    CheckBoxField(title: 'Keys'),
    CheckBoxField(title: 'Charged Phone'),
    CheckBoxField(title: 'Phone charger'),
    CheckBoxField(title: 'Hand towel'),
    CheckBoxField(title: 'Music box'),
    CheckBoxField(title: 'Sunglasses'),
    CheckBoxField(title: 'Headphones'),
    CheckBoxField(title: 'Credit Card'),
    CheckBoxField(title: 'Bug spray'),
    CheckBoxField(title: 'Camera/Gopro'),
    CheckBoxField(title: 'Snacks'),
    CheckBoxField(title: 'Laptop/Ipad'),
    CheckBoxField(title: 'After sun (cream)'),
    CheckBoxField(title: 'Swimming trunks'),
    CheckBoxField(title: 'Enough clothes'),
    CheckBoxField(title: 'Your Homework'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ownAppBar('Short check List '),
      body: Padding(
        padding: const EdgeInsets.all(8.5),
        child: ListView(
          // Return us all the individual objects from the List
            children: [
              ...inserts.map(buildCheckbox).toList(),
            ]
        ),
      ),
    );
  }
  // Method takes the title (String) from The CheckboxListTile (every bool is on default false) onChanged &
  // seState are updating the boolean (value) and so the Checkbox will become the checked view
  Widget buildCheckbox(CheckBoxField checkBox) =>  CheckboxListTile(
    value: checkBox.value,
    title: Text(
      checkBox.title,
      style: TextStyle(fontSize: 22),) ,
    onChanged: (value) => setState(() => checkBox.value = value!),
    activeColor: Colors.green[600],
  );
}
