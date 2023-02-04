import 'package:flutter/material.dart';

void main() => runApp(const settingspage());

class settingspage extends StatelessWidget {
  const settingspage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        
        appBar: AppBar(
          title: const Text(
            ' Settings',
            style: TextStyle(color: Colors.black),
            
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        
        body: Column(
          children: [
            SizedBox(height: 40,),
           
            InkWell(
              child: Card(
              
                child: Container(
                  child: Text("Themes",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  
                  
                ),
              ),
             
            )
          ],
        ),
      ),
      
    );
  }
}
