import 'package:flutter/material.dart';

class HomeScrean extends StatelessWidget {
   const HomeScrean ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: appBar(),
      body: _body(),
      
        floatingActionButton: FloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat, 

    );
  }



   FloatingActionButton FloatingButton() {
    return const FloatingActionButton(
      onPressed: null, 
      backgroundColor: Color.fromARGB(255, 110, 20, 8),
      child: Icon(
        Icons.add,
        color: Colors.white,
        ), 
    );
  }




  SingleChildScrollView _body() {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Image(
              image: AssetImage('image/mo1.jpg'),
            ),
          Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: Text(
                'Wabiga  Af-Gooye',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 5),
              ),
            ),
             SizedBox(height: 5,),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'Mogadishu.somalia',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 1,
                        color: Colors.grey
                      ),
                  ),
                  ),
                  SizedBox( width: 160,),
                  Icon(
                    Icons.favorite,
                    color: Color.fromARGB(255, 110, 20, 8),
                    size: 30,
                    ),
                    SizedBox(width: 3,),
                    Text(
                      '22'
                    ),
                    SizedBox(height: 30,),

                ],
                
            ),
             SizedBox(height: 80,),  

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Icon(Icons.call,
                       size: 26, 
                      color: Color.fromARGB(255, 110, 20, 8),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        "Call",
                          style: TextStyle(
                          color:  Color.fromARGB(255, 110, 20, 8), 
                          fontSize: 18
                          )
                          )
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.send,
                        size: 26,
                        color:  Color.fromARGB(255, 110, 20, 8),
                      ),
                    SizedBox(height: 5,),
                      Text(
                        "Route",
                          style: TextStyle(
                            color: Color.fromARGB(255, 110, 20, 8),
                            fontSize: 18
                            )
                            )
                    ],
                  ),
                    Column(
                      children: [
                        Icon(Icons.share, 
                        color:  Color.fromARGB(255, 110, 20, 8),
                        size: 26, 

                        ),
                        Text(
                          "Share",
                          style:
                              TextStyle(
                                color:  Color.fromARGB(255, 110, 20, 8),
                                fontSize: 18),
                        ),
                      ],
                    ),
                    
                ],
              ), 
                Padding(
                padding:  EdgeInsets.all(30),
                child: Text(
                      'Waan ku salaamay kuso dhawow wabiga Af-gooye ee somalia maxa kale rabtay. '
                      'Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. '
                      'A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, '
                      'leads you to the lake, which warms to 20 degrees Celsius in the summer. '
                      'Activities enjoyed here include rowing, and riding the summer toboggan run.'
                      'Lake Oeschinen lies at the foot of the Bluemlisalp in the Bernese Alps. '
                      'Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. '
                      'A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, '
                      'leads you to the lake, which warms to 20 degrees Celsius in the summer. '
                      'Activities enjoyed here include rowing, and riding the summer toboggan run.'
                      'Lake Oeschinen lies at the foot of the Bluemlisalp in the Bernese Alps. '
                      'Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. '
                      'A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, '
                      'leads you to the lake, which warms to 20 degrees Celsius in the summer. '
                      'Activities enjoyed here include rowing, and riding the summer toboggan run.'
                      'Lake Oeschinen lies at the foot of the Bluemlisalp in the Bernese Alps. '
                      'Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. '
                      'A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, '
                      'leads you to the lake, which warms to 20 degrees Celsius in the summer. '
                      'Activities enjoyed here include rowing, and riding the summer toboggan run.'
                      'Lake Oeschinen lies at the foot of the Bluemlisalp in the Bernese Alps. '
                      'Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. '
                      'A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, '
                      'leads you to the lake, which warms to 20 degrees Celsius in the summer. '
                      'Activities enjoyed here include rowing, and riding the summer toboggan run.',

                      style: TextStyle(
                        fontSize: 15
                        ),
                ),
                   
                ) ,
                
             
                               
      ],
      
      ),

    
      
      
    );
  }




  AppBar appBar() {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 147, 142, 141),
      title:const Text(
        'Hi im MoSomali',
        style: TextStyle(
          color: Color.fromARGB(255, 20, 20, 20)
        ),
      ) ,
      centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            
          },
          child: Container(
            margin: const EdgeInsets.all(10),
            alignment: Alignment.center,
            child: const Icon(
              Icons.menu,
              color: Color.fromARGB(255, 0, 234, 62),
              
            ),
          
            
          ),
        ),
        actions: [
        GestureDetector(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.all(10),
            alignment: Alignment.center,
            width: 37,
            child: const Icon(
              Icons.more_vert,
              color: Color.fromARGB(255, 6, 6, 6),
              
            ),
           
          ),
        ),
      ],
      
    );
  }
}