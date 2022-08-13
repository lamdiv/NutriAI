import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:nutriai/analytics.dart';
import '../main.dart';
import 'package:http/http.dart' as http;

class Scan extends StatefulWidget {
  const Scan({Key? key}) : super(key: key);

  @override
  State<Scan> createState() => _ScanState();
}

class _ScanState extends State<Scan> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;
  bool flashOpen = false;

  

  @override
  void initState() {
    super.initState();
    // To display the current output from the Camera,
    // create a CameraController.
    _controller = CameraController(
      // Get a specific camera from the list of available cameras.
      cameras[0],
      // Define the resolution to use.
      ResolutionPreset.medium,
    );

    // Next, initialize the controller. This returns a Future.
    _initializeControllerFuture = _controller.initialize();

    !flashOpen? _controller.setFlashMode(FlashMode.always): _controller.setFlashMode(FlashMode.off);

  }

  

  @override
  void dispose() {
    // Dispose of the controller when the widget is disposed.
    _controller.dispose();
    super.dispose();

  }
  
  

  clickImage() async {
    final image = await _controller.takePicture();
    print(image.path);
    try {
      // Ensure that the camera is initialized.
      await _initializeControllerFuture;

      // Attempt to take a picture and then get the location
      // where the image file is saved.
      // final image = await _controller.takePicture();

      // if (image != null) {
      //   var url = Uri.http('10.0.2.2:8000', 'nutri/image/');

      //   http.MultipartRequest request = new http.MultipartRequest("POST", url);

      //   http.MultipartFile multipartFile =
      //       await http.MultipartFile.fromPath('image_to_scan', image.path);

      //   request.files.add(multipartFile);

      //   final streamedResponse = await request.send();
      //   final response = await http.Response.fromStream(streamedResponse);

      //   print(response.body);
      // }

      return showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Calories'),
                  const Text('240Kcal'),

                ],
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Total Fat'),
                  const Text('4g'),

                ],
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Cholestrol'),
                  const Text('5mg'),

                ],
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Sodium'),
                  const Text('430mg'),

                ],
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Total Carbohydrate'),
                  const Text('46g'),

                ],
              ),
              SizedBox(height: 5,),
              
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>const Analytics() )),
              child: const Text('Add'),
            ),
          ],
        ),
      );
    } catch (e) {
      // If an error occurs, log the error to the console.
      print(e);
    }
  }



  @override
  Widget build(BuildContext context) {
    
    return SizedBox(
      width: double.infinity,
      height: double.maxFinite,
      // height: MediaQuery.of(context).size.height - 00,
      child: FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // If the Future is complete, display the preview.
            return CameraPreview(
              _controller,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          'We Care About You ❤️',
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          // Wrap(
                          //   spacing: 5,
                          //   children: [
                          //     TextButton(
                          //       style: TextButton.styleFrom(
                          //         primary: Colors.white,
                          //         backgroundColor: const Color(0xFF7B4EA8),
                          //         minimumSize: const Size(75, 28),
                          //         padding: const EdgeInsets.symmetric(
                          //             horizontal: 16.0),
                          //         shape: const RoundedRectangleBorder(
                          //           borderRadius:
                          //               BorderRadius.all(Radius.circular(50.0)),
                          //         ),
                          //       ),
                          //       onPressed: () {},
                          //       child: const Text('Label'),
                          //     ),
                          //     const SizedBox(
                          //       height: 20,
                          //     ),
                          //     TextButton(
                          //       style: TextButton.styleFrom(
                          //         primary: Colors.white,
                          //         // backgroundColor: const Color,

                          //         minimumSize: const Size(75, 28),
                          //         padding: const EdgeInsets.symmetric(
                          //             horizontal: 16.0),
                          //         shape: const RoundedRectangleBorder(
                          //           borderRadius:
                          //               BorderRadius.all(Radius.circular(50.0)),
                          //         ),
                          //       ),
                          //       onPressed: () {},
                          //       child: const Text('Quantity'),
                          //     ),
                          //   ],
                          // ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(
                                Icons.image,
                                size: 33,
                                color: Colors.white,
                              ),
                              GestureDetector(
                                onTap: () => clickImage(),
                                child: const Icon(
                                  Icons.circle,
                                  size: 60,
                                  color: Colors.white,
                                  shadows: [
                                    BoxShadow(
                                      color: Color.fromARGB(223, 140, 146, 228),
                                      spreadRadius: 7,
                                      blurRadius: 15,

                                      // changes position of shadow
                                    ),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  
                                  setState(() {
                                    // print(flashOpen);
                                    flashOpen = !flashOpen;
                                  });

                                  
                                },
                                child: !flashOpen
                                    ? const Icon(
                                        Icons.flash_off,
                                        color: Colors.white,
                                      )
                                    : const Icon(
                                        Icons.flash_on,
                                        color: Colors.amber,
                                      ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ]),
            );
          } else {
            // Otherwise, display a loading indicator.
            return const Center(
                child: CircularProgressIndicator(
              color: Color(0xFF7B4EA8),
            ));
          }
        },
      ),
    );
  }
}
