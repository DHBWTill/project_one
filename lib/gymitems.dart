import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_one/widgets.dart';

import 'checkboxfield.dart';


class GymItems extends StatefulWidget {
  const GymItems({super.key});

  @override
  SelectionChoice createState() => SelectionChoice();
}


class SelectionChoice extends State<GymItems>{

  //Filling the list with reminders up
  final inserts = [
    CheckBoxField(title: 'Bath slippers'),
    CheckBoxField(title: 'New cloths'),
    CheckBoxField(title: 'Two pairs of shoes'),
    CheckBoxField(title: 'Water'),
    CheckBoxField(title: 'Earphones'),
    CheckBoxField(title: 'Keys'),
    CheckBoxField(title: 'Charged Phone'),
    CheckBoxField(title: 'Hand towel'),
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
  );
}

