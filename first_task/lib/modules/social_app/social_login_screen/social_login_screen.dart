// import 'package:flutter/material.dart';
// import 'package:first_task/modules/social_app/social_login_screen/social_home_screen.dart';
// import 'package:first_task/widgets/custom_Text.dart';
// import 'package:first_task/widgets/custom_button.dart';
// import 'package:hexcolor/hexcolor.dart';

// class SocialLoginScreen extends StatelessWidget {
//   SocialLoginScreen({Key? key});
//   TextEditingController userNameController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//   GlobalKey<FormState> formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Stack(
//           children: [
//             Image.asset(
//               'assets/images/camera.jpg',
//               fit: BoxFit.cover,
//               width: 500,
//               height: double.infinity,
//             ),
//             Positioned(
//               top: 140,
//               left: 20,
//               child: Column(
//                 children: [
//                   Text("My ",
//                       style: TextStyle(
//                           color: HexColor('6f7074'),
//                           fontSize: 35,
//                           fontWeight: FontWeight.bold,
//                           fontFamily: 'jannah')),
//                   const SizedBox(
//                     height: 5,
//                   ),
//                   Text("Gellary",
//                       style: TextStyle(
//                           color: HexColor('6f7074'),
//                           fontSize: 35,
//                           fontWeight: FontWeight.bold,
//                           fontFamily: 'jannah')),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   Container(
//                     width: 320,
//                     height: 400,
//                     decoration: BoxDecoration(
//                       color: Colors.white.withOpacity(0.8),
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                     child: Form(
//                       key: formKey,
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           const SizedBox(height: 5),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Container(
//                                 width: 50,
//                                 height: 50,
//                                 decoration: BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   color: Colors.transparent,
//                                   boxShadow: [
//                                     BoxShadow(
//                                       color: Colors.red.withOpacity(0.3),
//                                       spreadRadius: 30,
//                                       blurRadius: 20,
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Text(
//                                 "LOG IN",
//                                 style: TextStyle(
//                                   color: HexColor('6f7074'),
//                                   fontSize: 35,
//                                   fontWeight: FontWeight.bold,
//                                   fontFamily: 'jannah',
//                                 ),
//                               ),
//                               Container(
//                                 width: 50,
//                                 height: 50,
//                                 decoration: BoxDecoration(
//                                    shape: BoxShape.circle,
//                                   color: Colors.transparent,
//                                   boxShadow: [
//                                     BoxShadow(
//                                       color: Colors.yellow.withOpacity(0.3),
//                                       spreadRadius: 30,
//                                       blurRadius: 20,
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                           const SizedBox(height: 35),
//                           CustomText(
//                             label: 'User Name',
//                             controller: userNameController,
//                             obscureText: false,
//                             validate: (String? value) {
//                               if (value!.isEmpty) {
//                                 return 'Please enter your User Name';
//                               }
//                               return null;
//                             },
//                             keyboardType: TextInputType.text,
//                           ),
//                           const SizedBox(height: 25),
//                           CustomText(
//                             label: 'Password',
//                             obscureText: true,
//                             controller: passwordController,
//                             validate: (String? value) {
//                               if (value!.isEmpty) {
//                                 return 'Please enter your Password';
//                               }
//                               return null;
//                             },
//                             keyboardType: TextInputType.visiblePassword,
//                           ),
//                           const SizedBox(height: 25),
//                           Stack(
//                             children: [
//                               Positioned.fill(
//                                 child: Container(
//                                   decoration: BoxDecoration(
//                                     shape: BoxShape.circle,
//                                     color: Colors.pink,
//                                     boxShadow: [
//                                       BoxShadow(
//                                         color: Colors.pink,
//                                         spreadRadius: 5,
//                                         blurRadius: 30,
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                               CustomButton(
//                                 width: 270,
//                                 height: 50,
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                                 textButton: 'SUMBIT',
//                                 onPressed: () {
//                                   if (formKey.currentState!.validate()) {
//                                     Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                         builder: (context) => SocialHomeScreen(
//                                           name: userNameController.text,
//                                         ),
//                                       ),
//                                     );
//                                   }
//                                 },
//                               ),
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



//Responsive

import 'package:flutter/material.dart';
import 'package:first_task/modules/social_app/social_login_screen/social_home_screen.dart';
import 'package:first_task/widgets/custom_Text.dart';
import 'package:first_task/widgets/custom_button.dart';
import 'package:hexcolor/hexcolor.dart';

class SocialLoginScreen extends StatelessWidget {
  SocialLoginScreen({Key? key});
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Stack(
            children: [
              Image.asset(
                'assets/images/camera.jpg',
                fit: BoxFit.cover,
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.2,
                left: 20,
                right: 20,
                child: Column(
                  children: [
                    Text("My ",
                        style: TextStyle(
                            color: HexColor('6f7074'),
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'jannah')),
                    const SizedBox(
                      height: 5,
                    ),
                    Text("Gellary",
                        style: TextStyle(
                            color: HexColor('6f7074'),
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'jannah')),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.6,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Form(
                        key: formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.transparent,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.red.withOpacity(0.3),
                                        spreadRadius: 30,
                                        blurRadius: 20,
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  "LOG IN",
                                  style: TextStyle(
                                    color: HexColor('6f7074'),
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'jannah',
                                  ),
                                ),
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                     shape: BoxShape.circle,
                                    color: Colors.transparent,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.yellow.withOpacity(0.3),
                                        spreadRadius: 30,
                                        blurRadius: 20,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 35),
                            CustomText(
                              label: 'User Name',
                              controller: userNameController,
                              obscureText: false,
                              validate: (String? value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your User Name';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.text,
                            ),
                            const SizedBox(height: 25),
                            CustomText(
                              label: 'Password',
                              obscureText: true,
                              controller: passwordController,
                              validate: (String? value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your Password';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.visiblePassword,
                            ),
                            const SizedBox(height: 25),
                            Stack(
                              children: [
                                Positioned.fill(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.pink,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.pink,
                                          spreadRadius: 5,
                                          blurRadius: 30,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                CustomButton(
                                  width: 270,
                                  height: 50,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  textButton: 'SUBMIT',
                                  onPressed: () {
                                    if (formKey.currentState!.validate()) {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              SocialHomeScreen(
                                            name: userNameController.text,
                                          ),
                                        ),
                                      );
                                    }
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
