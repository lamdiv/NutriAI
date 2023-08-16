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

final List<Map<String, dynamic>> healthierFoodItems = [
  {
    'name': 'Salad',
    'image':
        'https://cdn.pixabay.com/photo/2021/01/10/04/37/salad-5904093_640.jpg',
    'price': 'Rs 150'
  },
  {
    'name': 'Oatmeal',
    'image':
        'https://cdn.pixabay.com/photo/2016/11/21/15/53/berries-1846085_640.jpg',
    'price': 'Rs 120'
  },
  {
    'name': 'Salmon Fish',
    'image':
        'https://cdn.pixabay.com/photo/2014/11/05/15/57/salmon-518032_640.jpg',
    'price': 'Rs 200'
  },
  {
    'name': 'Fruit Bowl',
    'image':
        'https://cdn.pixabay.com/photo/2017/05/11/19/44/fresh-fruits-2305192_640.jpg',
    'price': 'Rs 130'
  },
  {
    'name': 'Smoothie',
    'image':
        'https://cdn.pixabay.com/photo/2017/04/23/09/44/smoothies-2253423_640.jpg',
    'price': 'Rs 100'
  },
];

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(15.0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF330022),
                  ),
                ],
              ),
              width: double.infinity,
              height: 100,
              child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi John!',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
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
            const SizedBox(height: 10),
            SizedBox(
                height: 180,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: healthierFoodItems
                      .length, // Use the length of the healthierFoodItems list
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
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.network(
                                healthierFoodItems[index]['image'],
                                fit: BoxFit.fitHeight, // set your height
                                height: 100,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              healthierFoodItems[index]['name'],
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF323232),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Wrap(
                              spacing: 10,
                              children: [
                                const Text(
                                  'Price',
                                  style: TextStyle(
                                    color: Color(0xFFED9BED),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  healthierFoodItems[index]['price'],
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFFF9900),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                )),
          ],
        ),
      ),
    );
  }
}
