import 'package:flutter/material.dart';

final List<Map<String, String>> foodItems = [
  {
    'name': 'Apple Pie',
    'image':
        'https://cdn.pixabay.com/photo/2015/06/10/19/56/apples-805124_640.jpg'
  },
  {
    'name': 'Banana Oats',
    'image':
        'https://cdn.pixabay.com/photo/2015/08/20/20/07/cereal-898073_640.jpg'
  },
  {
    'name': 'Cherry Juice',
    'image':
        'https://media.istockphoto.com/id/614842302/photo/cherry-juice-with-fresh-berries.webp?b=1&s=612x612&w=0&k=20&c=k2WqDhfmqpHsf5OEWGiLlhd7AkKw7toJGnhLB3Shawo='
  },
  {
    'name': 'Dried Date',
    'image':
        'https://media.istockphoto.com/id/542563100/photo/bowl-of-dried-dates.webp?b=1&s=612x612&w=0&k=20&c=2FPYT-UIB2RVcZB_2oUjgyjAMuaqCWKt8FcESIbr5qs='
  },
  {
    'name': 'Eggplant',
    'image':
        'https://cdn.pixabay.com/photo/2016/09/10/17/47/eggplant-1659784_1280.jpg'
  },
  {
    'name': 'Fig',
    'image':
        'https://cdn.pixabay.com/photo/2017/02/19/09/20/figs-2079166_640.jpg'
  },
];

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final searchController = TextEditingController();

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
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10.0),
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
                onChanged: (value) {
                  setState(() {});

                  ;
                },
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
            Expanded(
                child: SingleChildScrollView(
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.0,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                ),
                itemCount:
                    foodItems.length, // Use the length of the foodItems list
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
                            color: Color.fromARGB(25, 249, 87, 249),
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
                                image: NetworkImage(foodItems[index]['image']!),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            foodItems[index]['name']!,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF323232),
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          const Row(
                            children: [
                              Text(
                                'Nutri Star',
                                style: TextStyle(
                                  color: Color(0xFFED9BED),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Wrap(
                                children: [
                                  Icon(Icons.star,
                                      color: Colors.amber, size: 16),
                                  Icon(Icons.star,
                                      color: Colors.amber, size: 16),
                                  Icon(Icons.star,
                                      color: Colors.amber, size: 16),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            )),
          ],
        ),
      ),
    );
  }
}
