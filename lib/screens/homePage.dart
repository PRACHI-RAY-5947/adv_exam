import 'package:flutter/material.dart';
import 'package:quotes_app/utils/routes.dart';
import 'package:share/share.dart';

import '../helper/helper.dart';
import '../modals/modals.dart';
import 'favouritePage.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Set<int> likedQuotes = Set();
  final Set<int> savedQuotes = Set();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quotes App'),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FavouritePage()),
              );
            },
          )
        ],
      ),
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: quotes.length,
        itemBuilder: (context, index) {
          final quote = quotes[index];
          return Container(
            height: 800,
            width: 600,
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("lib/assets/bg/img_5.jpeg"),fit: BoxFit.cover),
            ),
            // decoration: BoxDecoration(
            //   image: image
            //       ? DecorationImage(
            //     image: AssetImage(
            //       bgImages[selectedImages],
            //     ),
            //     fit: BoxFit.cover,
            //   )
            //       : null,
            // ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 100),
                        child: Text(
                          quote['text']!,
                          style: const TextStyle(
                            fontSize: 24,
                            fontStyle: FontStyle.italic,
                            color: Colors.black87,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        '- ${quote['author']}',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Column(
                          children: [
                            IconButton(
                              icon: Icon(
                                likedQuotes.contains(index)
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: likedQuotes.contains(index)
                                    ? Colors.red
                                    : null,
                              ),
                               onPressed: () {
                                setState(() {
                                  if (likedQuotes.contains(index)) {
                                    likedQuotes.remove(index);
                                  } else {
                                    likedQuotes.add(index);
                                  }
                                });
                                },
                            ),
                            const SizedBox(height: 30),
                            IconButton(
                              icon: const Icon(Icons.share),
                              onPressed: () {
                                Share.share('${quote['text']} - ${quote['author']}');
                              },
                            ),
                            const SizedBox(height: 30),
                            IconButton(
                              icon: Icon(
                                savedQuotes.contains(index)
                                    ? Icons.bookmark
                                    : Icons.bookmark_border,
                                color: savedQuotes.contains(index)
                                    ? Colors.black
                                    : null,
                              ),
                              onPressed: () {
                                setState(() {
                                  if (savedQuotes.contains(index)) {
                                    savedQuotes.remove(index);
                                  } else {
                                    savedQuotes.add(index);
                                  }
                                });
                              },
                            ),
                            const SizedBox(height: 30),
                            IconButton(
                              icon: Icon(Icons.edit),
                              onPressed: () {
                                Navigator.pushReplacementNamed(context, MyRoutes.editPage);
                                // Handle edit action
                              },
                            ),
                            const SizedBox(height: 20),
                            IconButton(
                              onPressed: () {
                                Navigator.pushReplacementNamed(context, MyRoutes.quotePage);
                              },
                              icon: const Icon(Icons.category),
                            ),
                          ],
                        ),
                      ),
                    ],
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
