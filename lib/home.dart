import 'package:flutter/material.dart';

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
                    color: Color(0xFF7B4EA8),
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
                      'Hi Diwash!',
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
                  gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.0,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                  ),
                  itemCount: 6,
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
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: const DecorationImage(
                                        image: NetworkImage(
                                            'https://familydoctor.org/wp-content/uploads/2010/05/shutterstock_300553067.jpg'),
                                        fit: BoxFit.cover,
                                      )),
                                ),
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
                                const Row(
                                  children: [
                                    Text(
                                      'Nutri Star',
                                      style:
                                          TextStyle(color: Color(0xFF7B4EA8)),
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
                              ])),
                    );
                  },
                )),
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
                              const Wrap(
                                spacing: 10,
                                children: [
                                  Text(
                                    'Price',
                                    style:
                                        TextStyle(color: Color(0xFF7B4EA8)),
                                  ),
                                  Text(
                                    'Rs 200',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFFFF9900)),
                                  )
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
    );
  }
}
