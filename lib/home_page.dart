
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        centerTitle: true,
        title: Text('GRID VIEW',
        style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600,fontSize: 26),
        )
      ),
      backgroundColor: Colors.blue[900],
      
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.builder(
          itemCount: 21,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:3),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 50,
                color: Colors.blue[400],
              ),
            );
          },
        ),
      ),
    );
  }
}