import 'package:flutter/material.dart';
import 'package:project_one/studentitems.dart';
import 'package:project_one/travelitemlong.dart';
import 'package:project_one/travelitemshort.dart';
import 'package:project_one/widgets.dart';
import 'footballitems.dart';
import 'gymitems.dart';

enum _PopupValues{
  exam,
}
enum _SportPopupValues{
  football,
  gym
}
enum _TravelPopulValues{
  short,
  long
}

class SelectionPage extends StatefulWidget {
  const SelectionPage({super.key});

  @override
  SelectionChoice createState() => SelectionChoice();
}


class SelectionChoice extends State<SelectionPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ownAppBar("Selection"),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/backgr.png"), fit: BoxFit.fill
            ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 20,
                    ),
            Container(
              child: Text('Press the Text to select your topic!', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                    ),
            SizedBox(
              height: 60,
                   ),
            // Shows the school icon
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.school, size: 70,color: Colors.brown),
              ],
                  ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [PopupMenuButton<_PopupValues>(
                child: Text('Student', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35, color: Colors.brown[700],
                    decoration: TextDecoration.underline)),
                itemBuilder: (BuildContext context)=>[
                  const PopupMenuItem(
                      value: _PopupValues.exam,
                      child: Text('exam prepared', style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
                  )
                ],
                // if the Button exam got pressed than he onSelected Method opens the new Page
                onSelected: (value){
                  switch (value){
                    case _PopupValues.exam:
                      Navigator.of(context).push(MaterialPageRoute(builder: (c)=> StudentItems()));
                      break;}
                },
              ),
          ]
        ),
           // Spacer(),
            SizedBox(
              height: 80,
                    ),
            // Shows the American Football icon
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.sports_football, size: 70, color: Colors.orange[800])
              ],
                  ),

            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Shows a Button that have a popup in this case Football bag & Gym bag
                  PopupMenuButton(
                    child: Text('Sport', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35, color: Colors.orange[800],
                        decoration: TextDecoration.underline)),
                    itemBuilder: (BuildContext context)=>[
                      PopupMenuItem(
                          child: Text('Football bag', style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
                          value: _SportPopupValues.football),
                      PopupMenuItem(
                        child: Text('Gym bag', style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
                        value: _SportPopupValues.gym, ),
                    ],
                    // if the case football got pressed happens than opens FootballItems()
                    onSelected: (value) {
                      switch (value) {
                        case _SportPopupValues.football:
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (c) => FootballItems()));
                          break;
                        case _SportPopupValues.gym:
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (c) => GymItems()));
                          break;
                      }
                    },
                  )
                ]
            ),

            SizedBox(
              height: 80,
            ),
            // Shows the explore icon
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.travel_explore, size: 70, color: Colors.green[700]),

              ],
            ),

            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PopupMenuButton<_TravelPopulValues>(
                  child: Text('Travel', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green[800],
                      fontSize: 35, decoration: TextDecoration.underline),),
                  itemBuilder: (BuildContext context)=>[
                    PopupMenuItem(
                        child: Text('Short Trip', style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
                        value: _TravelPopulValues.short),
                    PopupMenuItem(
                        child: Text('Long Trip', style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
                        value: _TravelPopulValues.long),
                  ],
                  onSelected: (value) {
                    switch (value) {
                      case _TravelPopulValues.short:
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (c) => TravelItemShort()));
                        break;
                      case _TravelPopulValues.long:
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (c) => TravelItemLong()));
                        break;
                    }
                  },
                )
              ]
            ),
          ]
        ),
      ),
    );
  }
}


// onSelected: (value){
// switch (value){
// case _PopupValues.x1:
// Navigator.of(context).push(MaterialPageRoute(builder: (c)=> StudentItems()));
// break;
// case _PopupValues.x2:
// break;
// case _PopupValues.x3:
// break;
// }
// },