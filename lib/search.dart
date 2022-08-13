import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {

  final searchController = TextEditingController();

  getData() async{
   
    var url = Uri.http('10.0.2.2:8000','/nutri/nutrition/',{'search': searchController.text});
    var response = await http.get(url);
    final data = json.decode(response.body);
    if(data.length == 0){
      var url = Uri.http('10.0.2.2:8000','/nutri/nutrition/');
      final data = json.decode(response.body);
      List<Map<String,dynamic>> nutrition = [];
    data.forEach((element){
      nutrition.add(element as Map<String,dynamic>);
    });
    return nutrition;
    } else {
      List<Map<String,dynamic>> nutrition = [];
    data.forEach((element){
      nutrition.add(element as Map<String,dynamic>);
    });
    return nutrition;
    }
    
    
    
  }
  

 
  @override
  void initState() {
    super.initState();
    // searchController.addListener(_printLatestValue);
  }

    
  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {  
    return Scaffold(
      
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 25.0),
              padding:
                  const EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
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
              child: TextFormField(
                controller: searchController,
                onChanged: (value){
                  setState(() {
                    
                  });
                 
    ;              },
                keyboardType: TextInputType.visiblePassword,
                decoration: const InputDecoration(
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  icon: Icon(
                    Icons.search_outlined,
                    color: Colors.black,
                  ),
                  hintText: 'Search',
                  border: InputBorder.none,
                ),
                cursorColor: const Color(0xFF646464),
                style: const TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
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
                        return Text('Loading....');
                      }
                    }),
                    
                ),
                ),
                
          ],
        ),
      ),
    );
  }
}
