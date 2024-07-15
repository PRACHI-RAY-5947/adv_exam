import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotes_app/utils/routes.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          Container(
            height: 900,
            width: 600,
            child: Image(image: AssetImage('lib/assets/info/info_img.jpeg'),
          fit: BoxFit.cover,),
          ),
          Container(
            height: 900,
            width: 600,
            color: Colors.white.withOpacity(0.3),
            child: const Align(alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 390),
                child: Text("Let's see your feelings on Real World",
                          style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontStyle: FontStyle.italic),),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Align(alignment:Alignment.bottomRight,
                child: Row(children: [GestureDetector(
                    onTap: (){
                      Navigator.pushReplacementNamed(context, MyRoutes.infoPage2);
                    },
                    child: Text(("skip>>"),style: TextStyle(color: Colors.white,fontSize: 20),))],)),
          )
        ],
      ),
    );
  }
}
