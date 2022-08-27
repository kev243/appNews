import 'package:flutter/material.dart';

import '../widgets/last_news.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeSreenState();
}

class _HomeSreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "L'actualité en ",
                style: TextStyle(fontSize: 29),
              ),
              Text(
                "Continue ",
                style: TextStyle(fontSize: 29),
              ),
              SizedBox(height: 20),
              Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 15),
                          height: 120,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          'assets/images/journal.png',
                                        )),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                  child: Text(
                                      "Dinner in America Trailer: Punk Anarchy Invades Midwest Suburbia"))
                            ],
                          ),
                        );
                      })),
                      SizedBox(height: 20),

                      Center(child: Text('Applicatiion PWA lancer par Kevbot')),
            ],
          ),
        ),
      ),
    );
  }
}
