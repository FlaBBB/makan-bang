import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            AspectRatio(
              aspectRatio:
                  16 / 9, // Adjust the aspect ratio according to your image
              child: FractionallySizedBox(
                widthFactor: 1.0,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    image: DecorationImage(
                      image: AssetImage("assets/img/img-1.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(children: [
                const SizedBox(
                    width: double.infinity,
                    child: Text("Potstickers",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ))),
                const SizedBox(
                    width: double.infinity,
                    child: Text('Chinese Dumplings',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                        ))),
                Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(top: 8),
                    child: const Text(
                        'Delicate, handcrafted wrappers embrace a tantalizing blend of succulent ground pork, finely chopped cabbage, and aromatic scallions, seasoned with the perfect balance of soy sauce and sesame oil.',
                        style: TextStyle(
                            fontFamily: 'Montserrat', color: Colors.grey))),
                Container(
                    padding: const EdgeInsets.only(top: 8),
                    child: const Row(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.timer,
                              color: Colors.black,
                            ),
                            Text(
                              "25min",
                              style: TextStyle(
                                color: Colors.black54,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.fastfood,
                              color: Colors.black,
                            ),
                            Text(
                              "25min",
                              style: TextStyle(
                                color: Colors.black54,
                              ),
                            )
                          ],
                        ),
                      ],
                    )),
              ]),
            ),
            Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                width: double.infinity,
                child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Ingredients",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          )),
                    ])),
            Container()
          ],
        ),
      ),
    );
  }
}
