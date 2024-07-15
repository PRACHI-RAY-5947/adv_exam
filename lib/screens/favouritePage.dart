import 'package:flutter/material.dart';
import 'package:quotes_app/utils/routes.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({super.key});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  final Set<int> likedQuotes = Set();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
       leading: GestureDetector(
           onTap: (){
             Navigator.pushReplacementNamed(context, MyRoutes.homePage);
           },
           child: Icon(Icons.arrow_back)),
       title: Text('Favourites'),
      ),
      body: ListView.builder(
        itemCount: likedQuotes.length,
        itemBuilder: (context, index) {
          final quote = likedQuotes.contains(index);
          return const Card(
            margin: EdgeInsets.all(8.0),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(Icons.headset_rounded),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        // children: [
                        //   Text(quote['text']!,
                        //   style: const TextStyle(
                        //     fontSize: 24,
                        //     fontStyle: FontStyle.italic,
                        //     color: Colors.black87,
                        // ),
                        //     textAlign: TextAlign.center,
                        //   ),
                        // ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        }
      )
    );
  }
}
