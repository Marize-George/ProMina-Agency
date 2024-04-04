// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:first_task/model/image_model.dart';
// import 'package:hexcolor/hexcolor.dart';
// import 'package:image_picker/image_picker.dart';

// class SocialHomeScreen extends StatelessWidget {
//   SocialHomeScreen({Key? key, required this.name}) : super(key: key);

//   final String name;

//   List<ImageModel> images = [
//     ImageModel(image: 'assets/images/img1.jpg'),
//     ImageModel(image: 'assets/images/img2.jpg'),
//     ImageModel(image: 'assets/images/img3.jpg'),
//     ImageModel(image: 'assets/images/img4.jpg'),
//     ImageModel(image: 'assets/images/img5.jpg'),
//     ImageModel(image: 'assets/images/img6.jpg'),
//     ImageModel(image: 'assets/images/img7.jpg'),
//     ImageModel(image: 'assets/images/img8.jpg'),
//     ImageModel(image: 'assets/images/img9.jpg'),
//     ImageModel(image: 'assets/images/img10.jpg'),
//     ImageModel(image: 'assets/images/img11.jpg'),
//     ImageModel(image: 'assets/images/img12.jpg'),
//     ImageModel(image: 'assets/images/img13.jpg'),
//     ImageModel(image: 'assets/images/img14.jpg'),
//     ImageModel(image: 'assets/images/img15.jpg'),
//     ImageModel(image: 'assets/images/img16.jpg'),
//     ImageModel(image: 'assets/images/img17.jpg'),
//     ImageModel(image: 'assets/images/img18.jpg'),
//   ];

//   String? _imageFile;

//   final ImagePicker _picker = ImagePicker();

//   void takePhoto(ImageSource source) async {
//     final pickedFile = await _picker.pickImage(source: source);
//     if (pickedFile != null) {
//      // setState(() {
//         _imageFile = pickedFile.path;
//      // });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.grey[400],
        
//         body: Stack(
//           children: [
            
//             ClipPath(
//               clipper: ContainerClipper(),
//               child: Container(
//                 alignment: Alignment.topLeft,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   gradient: LinearGradient(
//                     begin: Alignment.topCenter,
//                     end: Alignment.bottomCenter,
//                     colors: [
//                       Color.fromRGBO(209, 209, 235, 0.8),
//                       Color.fromRGBO(238, 206, 213, 0.8),
//                       Color.fromRGBO(209, 209, 235, 0.8),
//                     ],
//                   ),
//                 ),
//                 height: double.infinity,
//                 width: double.infinity,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(15),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 'Welcome',
//                                 style: TextStyle(
//                                   fontSize: 30,
//                                   fontFamily: 'jannah',
//                                   color: Colors.grey[800],
//                                 ),
//                               ),
//                               Text(
                               
//                                 '$name',
//                                 style: TextStyle(
//                                   fontSize: 30,
//                                   fontFamily: 'jannah',
//                                   color: Colors.grey[800],
//                                 ),
//                               ),
//                             ],
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.all(22.0),
//                             child: CircleAvatar(
//                               radius: 60,
//                               backgroundImage: AssetImage('assets/images/girl.jpg'),
//                             ),
//                           ),
                         
//                         ],
//                       ),
//                     ),
//                     Row(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 10),
//                           child: Container(
//                             width: 130,
//                             child: TextButton(
//                               style: ElevatedButton.styleFrom(
//                                 primary: Colors.white,
//                               ),
//                               onPressed: () {},
//                               child: Row(
//                                 children: [
//                                   Container(
//                                     width: 30,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(10),
//                                       color: Colors.red,
//                                       boxShadow: [
//                                         BoxShadow(
//                                           color: Colors.pink,
//                                           spreadRadius: 1,
//                                           blurRadius: 30,
//                                         ),
//                                       ],
//                                     ),
//                                     child: Icon(
//                                       Icons.arrow_back,
//                                       color: Colors.white,
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     width: 15,
//                                   ),
//                                   Text(
//                                     'Log Out',
//                                     style: TextStyle(
//                                       color: Color.fromARGB(255, 87, 77, 77),
//                                       fontFamily: 'jannah',
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 10),
//                           child: Container(
//                             width: 130,
//                             child: TextButton(
//                               style: ElevatedButton.styleFrom(
//                                 primary: Colors.white,
//                               ),
//                               onPressed: () {
//                                 showDialog(
//                                   context: context,
//                                   builder: (BuildContext context) {
//                                     return AlertDialog(
//                                       backgroundColor: Colors.transparent,
//                                       content: Padding(
//                                         padding: const EdgeInsets.symmetric(
//                                             horizontal: 30),
//                                         child: Container(
//                                           height: 200,
//                                           decoration: BoxDecoration(
//                                             borderRadius:
//                                                 BorderRadius.circular(10),
//                                             gradient: LinearGradient(
//                                               begin: Alignment.topCenter,
//                                               end: Alignment.bottomCenter,
//                                               colors: [
//                                                 Color.fromRGBO(
//                                                     232, 196, 196, 0.8),
//                                                 Color.fromRGBO(
//                                                     164, 164, 207, 0.8)
//                                               ],
//                                             ),
//                                           ),
//                                           child: Column(
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.center,
//                                             children: [
//                                               Card(
//                                                 color: Colors.grey[200],
//                                                 child: TextButton(
//                                                   onPressed: () {
//                                                     takePhoto(
//                                                         ImageSource.gallery);
//                                                     Navigator.pop(context);
//                                                   },
//                                                   child: Row(
//                                                     children: [
//                                                       CircleAvatar(
//                                                         radius: 20.0,
//                                                         backgroundImage: _imageFile ==
//                                                                 null
//                                                             ? AssetImage(
//                                                                 'assets/images/gellery.jpg')
//                                                             : Image.file(File(
//                                                                     _imageFile!))
//                                                                 .image,
//                                                       ),
//                                                       SizedBox(
//                                                         width: 10,
//                                                       ),
//                                                       Text(
//                                                         'Gellery',
//                                                         style: TextStyle(
//                                                           fontSize: 20,
//                                                           fontFamily: 'jannah',
//                                                           color:
//                                                               Colors.grey[800],
//                                                         ),
//                                                       ),
//                                                     ],
//                                                   ),
//                                                 ),
//                                               ),
//                                               Card(
//                                                 color: Colors.grey[300],
//                                                 child: TextButton(
//                                                   onPressed: () {
//                                                     takePhoto(
//                                                         ImageSource.camera);
//                                                     Navigator.pop(context);
//                                                   },
//                                                   child: Row(
//                                                     children: [
//                                                       CircleAvatar(
//                                                         radius: 20.0,
//                                                         backgroundImage: _imageFile ==
//                                                                 null
//                                                             ? AssetImage(
//                                                                 'assets/images/camera.jpg')
//                                                             : Image.file(File(
//                                                                     _imageFile!))
//                                                                 .image,
//                                                       ),
//                                                       SizedBox(
//                                                         width: 10,
//                                                       ),
//                                                       Text(
//                                                         'Camera',
//                                                         style: TextStyle(
//                                                           fontSize: 20,
//                                                           fontFamily: 'jannah',
//                                                           color:
//                                                               Colors.grey[800],
//                                                         ),
//                                                       ),
//                                                     ],
//                                                   ),
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       ),
//                                     );
//                                   },
//                                 );
//                               },
//                               child: Row(
//                                 children: [
//                                   Container(
//                                     width: 30,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(10),
//                                       color: Colors.orange,
//                                       boxShadow: [
//                                         BoxShadow(
//                                           color: Colors.orange,
//                                           spreadRadius: 1,
//                                           blurRadius: 30,
//                                         ),
//                                       ],
//                                     ),
//                                     child: Icon(
//                                       Icons.arrow_circle_up,
//                                       color: Colors.white,
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     width: 15,
//                                   ),
//                                   Text(
//                                     'Upload',
//                                     style: TextStyle(
//                                       color: Color.fromARGB(255, 87, 77, 77),
//                                       fontFamily: 'jannah',
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Expanded(
//                       child: Padding(
//                         padding: const EdgeInsets.all(10.0),
//                         child: SingleChildScrollView(
//                           child: GridView.builder(
//                             physics: NeverScrollableScrollPhysics(),
//                             shrinkWrap: true,
//                             itemCount: images.length,
//                             clipBehavior: Clip.none,
//                             gridDelegate:
//                                 const SliverGridDelegateWithFixedCrossAxisCount(
//                               crossAxisCount: 3,
//                               crossAxisSpacing: 15,
//                               mainAxisSpacing: 15,
//                             ),
//                             itemBuilder: (context, index) {
//                               return Container(
//                                 height: 200,
//                                 child: ClipRRect(
//                                   borderRadius: BorderRadius.circular(10.0),
//                                   child: Image.asset(
//                                     images[index].image!,
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               );
//                             },
//                           ),
//                         ),
//                       ),
//                     ),
                    
//                   ],
//                 ),
                         
//               ),
//             ),
           
         
//           ],
         
//         ),
      
//       ),
//     );
//   }
// }

// class ContainerClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     Path path = Path();
//     path.lineTo(0, size.height);
//     path.quadraticBezierTo(size.width * 0.25, size.height - 100,
//         size.width * 0.5, size.height - 50);
//     path.quadraticBezierTo(
//         size.width * 0.8, size.height, size.width , size.height - 50);
//     path.lineTo(size.width, 0);

//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     return true;
//   }
// }

// Responsive

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:first_task/model/image_model.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:image_picker/image_picker.dart';

class SocialHomeScreen extends StatelessWidget {
  SocialHomeScreen({Key? key, required this.name}) : super(key: key);

  final String name;

  List<ImageModel> images = [
    ImageModel(image: 'assets/images/img1.jpg'),
    ImageModel(image: 'assets/images/img2.jpg'),
    ImageModel(image: 'assets/images/img3.jpg'),
    ImageModel(image: 'assets/images/img4.jpg'),
    ImageModel(image: 'assets/images/img5.jpg'),
    ImageModel(image: 'assets/images/img6.jpg'),
    ImageModel(image: 'assets/images/img7.jpg'),
    ImageModel(image: 'assets/images/img8.jpg'),
    ImageModel(image: 'assets/images/img9.jpg'),
    ImageModel(image: 'assets/images/img10.jpg'),
    ImageModel(image: 'assets/images/img11.jpg'),
    ImageModel(image: 'assets/images/img12.jpg'),
    ImageModel(image: 'assets/images/img13.jpg'),
    ImageModel(image: 'assets/images/img14.jpg'),
    ImageModel(image: 'assets/images/img15.jpg'),
    ImageModel(image: 'assets/images/img16.jpg'),
    ImageModel(image: 'assets/images/img17.jpg'),
    ImageModel(image: 'assets/images/img18.jpg'),
  ];

  String? _imageFile;

  final ImagePicker _picker = ImagePicker();

  void takePhoto(ImageSource source) async {
    final pickedFile = await _picker.pickImage(source: source);
    if (pickedFile != null) {
      _imageFile = pickedFile.path;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: SingleChildScrollView(
        child: Stack(
          children: [
            ClipPath(
              clipper: ContainerClipper(),
              child: Container(
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromRGBO(209, 209, 235, 0.8),
                      Color.fromRGBO(238, 206, 213, 0.8),
                      Color.fromRGBO(209, 209, 235, 0.8),
                    ],
                  ),
                ),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Welcome',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: 'jannah',
                                  color: Colors.grey[800],
                                ),
                              ),
                              Text(
                                '$name',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: 'jannah',
                                  color: Colors.grey[800],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.all(22.0),
                            child: CircleAvatar(
                              radius: 60,
                              backgroundImage:
                                  AssetImage('assets/images/girl.jpg'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            width: 130,
                            child: TextButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                              ),
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Container(
                                    width: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.red,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.pink,
                                          spreadRadius: 1,
                                          blurRadius: 30,
                                        ),
                                      ],
                                    ),
                                    child: Icon(
                                      Icons.arrow_back,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    'Log Out',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 87, 77, 77),
                                      fontFamily: 'jannah',
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            width: 130,
                            child: TextButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                              ),
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      backgroundColor: Colors.transparent,
                                      content: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 30),
                                        child: Container(
                                          height: 200,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            gradient: LinearGradient(
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [
                                                Color.fromRGBO(
                                                    232, 196, 196, 0.8),
                                                Color.fromRGBO(
                                                    164, 164, 207, 0.8)
                                              ],
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Card(
                                                color: Colors.grey[200],
                                                child: TextButton(
                                                  onPressed: () {
                                                    takePhoto(
                                                        ImageSource.gallery);
                                                    Navigator.pop(context);
                                                  },
                                                  child: Row(
                                                    children: [
                                                      CircleAvatar(
                                                        radius: 20.0,
                                                        backgroundImage:
                                                            _imageFile == null
                                                                ? AssetImage(
                                                                    'assets/images/gellery.jpg')
                                                                : Image.file(File(
                                                                        _imageFile!))
                                                                    .image,
                                                      ),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      Text(
                                                        'Gallery',
                                                        style: TextStyle(
                                                          fontSize: 20,
                                                          fontFamily: 'jannah',
                                                          color:
                                                              Colors.grey[800],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Card(
                                                color: Colors.grey[300],
                                                child: TextButton(
                                                  onPressed: () {
                                                    takePhoto(
                                                        ImageSource.camera);
                                                    Navigator.pop(context);
                                                  },
                                                  child: Row(
                                                    children: [
                                                      CircleAvatar(
                                                        radius: 20.0,
                                                        backgroundImage:
                                                            _imageFile == null
                                                                ? AssetImage(
                                                                    'assets/images/camera.jpg')
                                                                : Image.file(File(
                                                                        _imageFile!))
                                                                    .image,
                                                      ),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      Text(
                                                        'Camera',
                                                        style: TextStyle(
                                                          fontSize: 20,
                                                          fontFamily: 'jannah',
                                                          color:
                                                              Colors.grey[800],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Row(
                                children: [
                                  Container(
                                    width: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.orange,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.orange,
                                          spreadRadius: 1,
                                          blurRadius: 30,
                                        ),
                                      ],
                                    ),
                                    child: Icon(
                                      Icons.arrow_circle_up,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    'Upload',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 87, 77, 77),
                                      fontFamily: 'jannah',
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: SingleChildScrollView(
                          child: GridView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: images.length,
                            clipBehavior: Clip.none,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: MediaQuery.of(context).size.width >
                                      600
                                  ? 6
                                  : 3,
                              crossAxisSpacing: 15,
                              mainAxisSpacing: 15,
                            ),
                            itemBuilder: (context, index) {
                              return Container(
                                height: 200,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.asset(
                                    images[index].image!,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContainerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(size.width * 0.25, size.height - 100,
        size.width * 0.5, size.height - 50);
    path.quadraticBezierTo(
        size.width * 0.8, size.height, size.width, size.height - 50);
    path.lineTo(size.width , 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
