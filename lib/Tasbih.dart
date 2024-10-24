import 'package:flutter/material.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

int countnumber = 10;

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          const Text(
            "Welcome to tasbih Apps!",
            style: TextStyle(fontSize: 34, color: Colors.black),
          ),
          const SizedBox(
            height: 80,
          ),
          Center(
            child: Container(
              height: 240,
              width: 200,
              decoration: BoxDecoration(
                  border: Border.all(color: const Color.fromARGB(255, 0, 0, 0), width: 3),
                  color: const Color.fromARGB(255, 50, 29, 126),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(110),
                    topRight: Radius.circular(110),
                    bottomLeft: Radius.elliptical(150.999, 220.800),
                    bottomRight: Radius.elliptical(150.999, 220.800),
                  )),
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 52,
                    width: 155,
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color.fromARGB(255, 0, 0, 0), width: 3),
                        color: const Color.fromARGB(255, 244, 243, 243),
                        borderRadius: BorderRadius.circular(17)),
                    child: Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            countnumber.toString(),
                            style: const TextStyle(fontSize: 22),
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              if (countnumber > 0) {
                                countnumber--;
                              }
                            });
                          },
                          icon: Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                //border: Border.all(color: Colors.white, width: 5),
                                color: const Color.fromARGB(255, 118, 116, 129),
                                borderRadius: BorderRadius.circular(40)),
                            child: const Icon(Icons.replay),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                countnumber = 0;
                              });
                            },
                            icon: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  //border: Border.all(color: Colors.white, width: 5),
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(40)),
                              child: const Icon(Icons.autorenew_outlined),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        countnumber++;
                      });
                    },
                    icon: Container(
                      height: 72,
                      width: 72,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 7),
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(40)),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}