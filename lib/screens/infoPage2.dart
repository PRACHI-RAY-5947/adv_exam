import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotes_app/utils/routes.dart';

class InfoPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          Container(
            height: 900,
            width: 600,
            child: const Image(image: AssetImage('lib/assets/info/start.jpeg'),
              fit: BoxFit.cover,),
          ),
          Container(
            height: 900,
            width: 600,
            color: Colors.white.withOpacity(0.3),
            child: const Align(alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 330,left: 8.0),
                child: Text("Let's start the journey....",
                  style: TextStyle(color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      fontStyle: FontStyle.italic),),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Align(alignment:Alignment.bottomRight,
                child: Row(children: [GestureDetector(
                    onTap: (){
                      Navigator.pushReplacementNamed(context, MyRoutes.homePage);
                    },
                    child: Text(("skip>>"),style: TextStyle(color: Colors.white,fontSize: 20),))],)),
          )
        ],
      ),
    );
  }
}
