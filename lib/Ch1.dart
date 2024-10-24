import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class HomeScreen1 extends StatelessWidget {
  const HomeScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Color(0xffFF5252)),
        centerTitle: true,
        title: const Text(
          "My Cart",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Text(
              "Clear",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            children: [
              cardwidget(
                Name: "Toorto Special2",
                price: "14",
              ),
              SizedBox(
                height: 10,
              ),
              cardwidget(
                Name: "Toorto Special1",
                price: "35.9",
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20, left: 15, right: 10),
            child: Container(
              child: Row(
                children: [
                  const Column(
                    children: [
                      Text(
                        "Total",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "\$ 25",
                        style: TextStyle(fontSize: 22),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 17),
                          backgroundColor: const Color(0xffFF5252),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)))),
                      child: const Text(
                        "Order now",
                        style: TextStyle(
                            color: Colors.white, fontSize: 15),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class cardwidget extends StatelessWidget {
  const cardwidget({
    super.key,
    required this.Name,
    required this.price,
  });

  final Name;
  final price;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Row(
        children: [
          const ClipRRect(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10), topLeft: Radius.circular(10)),
            child: Image(
              image: AssetImage("image/placeholder.jpg"),
              width: 150,
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      Name,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      width:50,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.grey.withOpacity(.1),
                      child: Icon(
                        Icons.delete_outline,
                        size: 25,
                        color: Colors.black.withOpacity(.7),
                      ),
                    )
                  ],
                ),
                Text(
                  "\$$price",
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: const Color(0xffF46A70),
                              borderRadius: BorderRadius.circular(30)),
                          child: const Icon(
                            Icons.remove,
                            size: 20,
                            color: Colors.white,
                          ),
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "1",
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: const Color(0xffF46A70),
                              borderRadius: BorderRadius.circular(30)),
                          child: const Icon(
                            Icons.add,
                            size: 20,
                            color: Colors.white,
                          ),
                        ))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}