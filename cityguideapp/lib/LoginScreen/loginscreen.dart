// import 'package:cityguideapp/HomeScreen/homescreen.dart';
// import 'package:cityguideapp/LoginScreen/logincontroller.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';

// class LoginScreen extends StatelessWidget {
//   final LoginController _loginController = Get.put(LoginController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Login'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               onChanged: (value) => _loginController.email.value = value,
//               decoration: InputDecoration(labelText: 'Email'),
//             ),
//             TextField(
//               onChanged: (value) => _loginController.password.value = value,
//               decoration: InputDecoration(labelText: 'Password'),
//               obscureText: true,
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 if (_loginController.validateCredentials()) {
//                   // Navigate to the home screen upon successful login
//                   Get.off(HomeScreen());
//                 } else {
//                   // Show snackbar with error message
//                   Get.snackbar(
//                     'Error',
//                     'Invalid email or password',
//                     snackPosition: SnackPosition.BOTTOM,
//                     backgroundColor: Colors.red,
//                     colorText: Colors.white,
//                   );
//                 }
//               },
//               child: Text('Login'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// new check screen    view

import 'package:cityguideapp/HomeScreen/homescreen.dart';
import 'package:cityguideapp/LoginScreen/logincontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = '/login';
  LoginScreen({super.key});
  LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              Align(
                heightFactor: 2.3,
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Login Now",
                  style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.bold, fontSize: 35),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "and let’s get started add your reviews",
                style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w600, fontSize: 15),
              ),
              const SizedBox(height: 20),
              Container(
                // height: 50,
                width: Get.width,
                child: TextFormField(
                  onChanged: (value) => loginController.email.value = value,
                  textAlignVertical: TextAlignVertical.center,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      hintText: "Email",
                      contentPadding: const EdgeInsets.all(15),
                      hintStyle: GoogleFonts.dmSans(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(255, 62, 61, 61)),
                      filled: true,
                      fillColor: Color(0xffFFE3E4)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                // height: 50,
                width: Get.width,
                child: TextFormField(
                  onChanged: (value) => loginController.password.value = value,
                  textAlignVertical: TextAlignVertical.center,
                  // controller: loginController.passwordController,
                  // obscureText: !loginController.isPasswordVisible.value,
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      // hintText: "E-commerce",
                      // contentPadding: const EdgeInsets.only(top: 30, left: 16),
                      hintText: "password",
                      hintStyle: GoogleFonts.montserrat(
                          fontSize: 16, fontWeight: FontWeight.normal),
                      filled: true,
                      // suffixIcon: InkWell(
                      //   onTap: () {
                      //     if (loginController.isPassword.value == true) {
                      //       loginController.isPassword.value = false;
                      //     } else {
                      //       loginController.isPassword.value = true;
                      //     }
                      //   },
                      //   child: IconButton(
                      //     icon: Icon(
                      //       loginController.isPasswordVisible.value
                      //           ? Icons.visibility
                      //           : Icons.visibility_off,
                      //       // color: ColorResources.OROCHIMARU,
                      //     ),
                      //     onPressed: () {
                      //       loginController.togglePasswordVisibility();
                      //     },
                      //   ),
                      // ),
                      contentPadding: const EdgeInsets.all(15),
                      fillColor: Color(0xffFFE3E4)),
                ),
              ),
              const SizedBox(height: 8),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: Get.width,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffFF000D),
                  ),
                  onPressed: () {
                    if (loginController.validateCredentials()) {
                      // Navigate to the home screen upon successful login
                      Get.off(HomeScreen());
                    } else {
                      // Show snackbar with error message
                      Get.snackbar(
                        'Error',
                        'Invalid email or password',
                        snackPosition: SnackPosition.BOTTOM,
                        backgroundColor: Colors.red,
                        colorText: Colors.white,
                      );
                    }
                  },
                  child: Text(
                    'Login',
                    style: GoogleFonts.montserrat(color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              SizedBox(
                  height: 230, child: Image.asset("assets/LoginScreenimg.png")),
            ],
          ),
        ),
      ),
    );
  }
}
