import 'package:flutter/material.dart';

// standard AppBar for every Page with individual Text title
PreferredSizeWidget ownAppBar(String title){
  return  AppBar(
      backgroundColor: Colors.grey[400],
      title: Text(title,
          style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 30)),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.grey[200],
            //Check symbol quals to the topic
            backgroundImage: AssetImage('assets/images/check.png'),
          )
        ],
      centerTitle: true
  );
}



