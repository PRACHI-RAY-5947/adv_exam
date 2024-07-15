import 'package:flutter/material.dart';
import 'package:quotes_app/modals/modals.dart';
import 'package:quotes_app/utils/routes.dart';

class Editpage extends StatefulWidget {
  const Editpage({super.key});

  @override
  State<Editpage> createState() => _EditpageState();
}

class _EditpageState extends State<Editpage> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, MyRoutes.homePage);
            },
            child: const Icon(Icons.arrow_back),
          ),
          title: Text("Images"),
        ),
        body: GridView.builder(
          padding: const EdgeInsets.all(10.0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
          ),
          itemCount: bgImages.length,
          itemBuilder: (context, index) {
            final category = bgImages;
            return GestureDetector(
              onTap: () {
                // Navigate to a specific category's quote page
              },
              child: Card(
                child: Column(
                  children: [
                    Expanded(
                      child: Image.asset(bgImages[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      );

  }
}
// Align(alignment:Alignment.bottomCenter,
// child: Padding(
// padding: const EdgeInsets.all(5),
// child: Container(
// height: 30,
// width:170,
// child: Center(
// child: Text(types[index],style: TextStyle(color: Colors.white,fontStyle:FontStyle.italic,fontWeight: FontWeight.bold,
// fontSize: 18),),
// ),
// decoration: BoxDecoration(color: Colors.blueGrey.withOpacity(0.5),
// borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))),
// ),
// ),
// )
