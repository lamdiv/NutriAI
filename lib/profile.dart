import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      child: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Your Info',
            style: TextStyle(
                color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Wrap(
                spacing: 10,
                direction: Axis.vertical,
                children: [
                  const Text(
                    'Name: John Doe',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  const Text(
                    'Age: 20 yo',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  const Text(
                    'Weight: 64 kg',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  const Text(
                    'Height: 180cm',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Row(
                    children: [
                      const Text(
                        'Diseases: ',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10.0),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(47, 175, 100, 150),
                            ),
                          ],
                        ),
                        child: const Text(
                          'Covid 19',
                          style: TextStyle(
                              color: Color(0xFF330022),
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  )
                ],
              ),
              TextButton(
                style: TextButton.styleFrom(
                  primary: const Color(0xFF330022),
                  backgroundColor: const Color(0xFF330022),
                  minimumSize: const Size(100, 50),
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => const DetailScreen()),
                  // );
                },
                child: const Text(
                  'Edit Profile',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 35,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Your Body Mass Index is',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '18',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 80,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Normal',
                style: TextStyle(
                    color: Color(0xFF00B26E),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
