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
      child: Expanded(
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Your Info',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
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
                      'Name: Diwash Lamichhane',
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
                      'Weight: 50 kg',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    const Text(
                      'Height: 185cm',
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
                                color: Color(0xFFFAF5FF),
                              ),
                            ],
                          ),
                          child: const Text(
                            'Tuberculosis',
                            style: TextStyle(
                              color: Color(0xFF7B4EA8),
                              fontSize: 18,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    primary: const Color(0xFF7B4EA8),
                    backgroundColor: const Color(0xFF7B4EA8),
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
                  child: const Text('Edit Profile', style: TextStyle(
                    fontSize: 15,
                    color: Colors.white
                  ),),
                )
              ],
            ),
            const SizedBox(
              height: 35,
            ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  const [
              Text(
                'Your Body Mass Index is',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20,),
              Text(
                '18',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 80,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10,),
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
      ),
    );
  }
}
