import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  getData() async{
    var url = Uri.http('10.0.2.2:8000','nutri/nutrition/');
    var response = await http.get(url);
    final data = json.decode(response.body);
    List<Map<String,dynamic>> nutrition = [];
    data.forEach((element){
      nutrition.add(element as Map<String,dynamic>);
    });
    return nutrition;
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
        child: Expanded(
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(15.0),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF7B4EA8),
                    ),
                  ],
                ),
                width: double.infinity,
                height: 100,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Hi Diwash!',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.tips_and_updates,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                              child: Text(
                            'Well Champ! Avoid high sugar, white breads and white rice. Here are some you can try...',
                            style: TextStyle(color: Colors.white),
                          ))
                        ],
                      ),
                    ]),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'Our Recommendation',
                style: TextStyle(
                    color: Color(0xFF323232),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                // padding: const EdgeInsets.all(10.0),
                margin: const EdgeInsets.only(top: 10, bottom: 25),
                child: FutureBuilder(
                  future: getData(),
                  builder: ((context, snapshot) {
                    if(snapshot.hasData){
                      final data = snapshot.data as List<Map<String,dynamic>>;
                      return GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.0,
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0,
                    ),
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => const DetailScreen()),
                          // );
                        },
                        child: Container(
                            padding: const EdgeInsets.all(5.0),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFFFAF5FF),
                                ),
                              ],
                            ),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        image: NetworkImage(data[index]['thumbnail'],),
                                        fit: BoxFit.cover,
                                      )
                                    ),
                                  ),
                                
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                     data[index]['name'],
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF323232)),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    
                                    children: [
                                      const Text(
                                        'Nutri Star',
                                        style: TextStyle(color: Color(0xFF7B4EA8)),
                                      ),
                                      SizedBox(width: 10,),
                                      Wrap(
                                        children: [
                                          for ( int i = 0 ; i < data[index]['rating'] ; i++) Icon(Icons.star, color: Colors.amber, size: 16,)
                                        ],
                                        
                                      )
                                    ],
                                  )
                                ])),
                      );
                    },
                 
                );
                    }
                    else{
                      return Text('Loading...');
                    }
                  }),
                  
              ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'Health for you',
                style: TextStyle(
                    color: Color(0xFF323232),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
             const SizedBox(
              height:10),
               SizedBox(
                height: 180,
                 child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
               
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => const DetailScreen()),
                        // );
                      },
                      child: Container(
                          padding: const EdgeInsets.all(5.0),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xFFFAF5FF),
                              ),
                            ],
                          ),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image.network(
                                      'https://familydoctor.org/wp-content/uploads/2010/05/shutterstock_300553067.jpg',
                                      fit: BoxFit.fitHeight, // set your height
                                      // width: double.maxFinite,
                                      height: 100,
                                      // and width here
                                    )),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Food Name',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF323232)),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Wrap(
                                  spacing: 10,
                                  children: const [
                                     Text(
                                      'Price',
                                      style: TextStyle(color: Color(0xFF7B4EA8)),
                                    ),
    
                                    Text('Rs 200', style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xFFFF9900)),)
                                    
                                  ],
                                )
                              ])),
                    );
                  },
                  ),
               ),
            
            ],
          ),
        ),
      ),
    );
  }
}
