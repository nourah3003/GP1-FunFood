import 'package:flutter/material.dart';
import 'package:gp3funfood/AddFruit.dart';
import 'package:gp3funfood/AddVegetables.dart';
//import 'package:gp3funfood/AddNewItem.dart';

class ChoseAdd extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 20),
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(45),
                    bottomLeft: Radius.circular(45)),
                color: Colors.transparent.withOpacity(0.10),
              ),
              child: Center(
                child: Text("Choose category you want to add to" ,
                  style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20 ,color: Colors.blueGrey,fontStyle:FontStyle.italic),
                ),
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              width: 300,
              height: 150,
              child: RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 8,horizontal: 30),
                onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=> AddFruit()));
                },
                color: Colors.deepPurple,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))
                ),
                child: Text("Fruits" ,
                  style: TextStyle(color: Colors.lime ,fontSize: 25,fontStyle:FontStyle.italic),),
              ),
            ),
            SizedBox(height: 90),
            SizedBox(
              width: 300,
              height: 150,
              child: RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 8,horizontal: 30),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> AddVegetables()));
                },
                color: Colors.deepPurple,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))
                ),
                child: Text("Vegetables" ,
                  style: TextStyle(color: Colors.lime ,fontSize: 25,fontStyle:FontStyle.italic),),
              ),
            ),

          ],
        ),
      ),
    );

  }
}
