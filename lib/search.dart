import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {

  final searchController = TextEditingController();

  void _printLatestValue() {
    print('Search item: ${searchController.text}');
  }

  @override
  void initState() {
    super.initState();
    searchController.addListener(_printLatestValue);
  }

    
  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.0,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
              ),
              itemCount: 21,
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
                            Expanded(
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.network(
                                    'https://familydoctor.org/wp-content/uploads/2010/05/shutterstock_300553067.jpg',
                                    fit: BoxFit.fitHeight, // set your height
                                    // width: double.maxFinite,
                                    height: 100,
                                    // and width here
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
                            Wrap(
                              spacing: 10,
                              children: [
                                const Text(
                                  'Nutri Star',
                                  style: TextStyle(color: Color(0xFF7B4EA8)),
                                ),
                                Wrap(
                                  children: const [
                                    Icon(
                                      Icons.star_rounded,
                                      size: 16,
                                      color: Color(0xFFFF9900),
                                    ),
                                    Icon(
                                      Icons.star_rounded,
                                      size: 16,
                                      color: Color(0xFFFF9900),
                                    ),
                                    Icon(
                                      Icons.star_rounded,
                                      size: 16,
                                      color: Color(0xFFFF9900),
                                    ),
                                    Icon(
                                      Icons.star_rounded,
                                      size: 16,
                                      color: Color(0xFFFF9900),
                                    ),
                                  ],
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
    );
  }
}
