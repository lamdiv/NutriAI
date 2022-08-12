import 'package:flutter/material.dart';

class Analytics extends StatefulWidget {
  const Analytics({Key? key}) : super(key: key);

  @override
  State<Analytics> createState() => _AnalyticsState();
}

class _AnalyticsState extends State<Analytics> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      child: Expanded(
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Your Consumption',
              style: TextStyle(
                  color: Color(0xFF323232),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),

            const SizedBox(
              height: 25,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               TextButton(
                  style: TextButton.styleFrom(
                    primary: const Color(0xFF7B4EA8),
                    backgroundColor: const Color(0xFF7B4EA8),
                    minimumSize: const Size(90, 40),
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
                  child: const Text('Today', style: TextStyle(
                    fontSize: 15,
                    color: Colors.white
                  ),),
                ),
               const Text(
                'Last 7 days',
                style: TextStyle(
                    
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
             const Text(
                'Last Month',
                style: TextStyle(
                    
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ],),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              height: 250,
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
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              'Your personalized Report',
              style: TextStyle(
                  color: Color(0xFF323232),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(top: 10),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFFAF5FF)
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
               const Text(
                  'Protein',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF7B4EA8)),
                ),
               const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      '100mg',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Color(0xFF555555)),
                    ),
                    Text(
                      'Normal',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Color(0xFF00B26E)),
                    ),
                  ],
                )
              ],
            ),
          ),
            Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(top: 10),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFFAF5FF)
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
               const Text(
                  'Sodium',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF7B4EA8)),
                ),
               const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      '200mg',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Color(0xFF555555)),
                    ),
                    Text(
                      'Danger',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.red),
                    ),
                  ],
                )
              ],
            ),
          ),
            Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(top: 10),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFFAF5FF)
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
               const Text(
                  'Carbohydrates',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF7B4EA8)),
                ),
               const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      '200mg',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Color(0xFF555555)),
                    ),
                    Text(
                      'Low',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.orange),
                    ),
                  ],
                )
              ],
            ),
          ),

          ],
        ),
      ),
    );
  }
}
