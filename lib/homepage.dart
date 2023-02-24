import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_one/selection.dart';
import 'package:project_one/widgets.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ownAppBar("Homepage"),
      body: Container(
        //Bakcground Image
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/backgr.png"), fit: BoxFit.fill
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(flex: 2),
             Text(" Welcome to your Reminder         ",
               style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
               textAlign: TextAlign.center,
             ),
            Spacer(),
            // Some Space Holders between the Text & Button who is Loading the SelectionPage
            ElevatedButton(
                onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SelectionPage()));
            },style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.black),),

              child: Text('Start Application', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),)
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
