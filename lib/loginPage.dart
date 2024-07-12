// import 'package:flutter/material.dart';
// // Import halaman register
// import 'package:fluttersagu/register.dart';
// import 'package:google_fonts/google_fonts.dart';

// class LoginPage extends StatelessWidget {
//   const LoginPage({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.transparent,
//       body: Stack(
//         fit: StackFit.expand,
//         children: <Widget>[
//           Image.asset(
//             'assets/images/logosagu.jpg',
//             fit: BoxFit.cover,
//           ),
//           Center(
//             child: SingleChildScrollView(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   SizedBox(height: 150),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         'Sagu ',
//                         style: GoogleFonts.poppins(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 32.0,
//                           color: Colors.white,
//                         ),
//                       ),
//                       Text(
//                         'Bengkalis',
//                         style: GoogleFonts.poppins(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 32.0,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 50),
//                   Center(
//                     child: Column(
//                       children: [
//                         Container(
//                           width: 300,
//                           height: 50,
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                           child: Padding(
//                             padding: const EdgeInsets.only(left: 16.0),
//                             child: TextField(
//                               decoration: InputDecoration(
//                                 hintText: 'Email',
//                                 border: InputBorder.none,
//                                 contentPadding: EdgeInsets.zero,
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(height: 20),
//                         Container(
//                           width: 300,
//                           height: 50,
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                           child: TextField(
//                             obscureText: true,
//                             decoration: InputDecoration(
//                               hintText: 'Password',
//                               border: InputBorder.none,
//                               contentPadding:
//                                   EdgeInsets.symmetric(horizontal: 16),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(height: 30),
//                   Center(
//                     child: Container(
//                       width: 300,
//                       height: 50,
//                       decoration: BoxDecoration(
//                         color: Colors.green,
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.green,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                         ),
//                         onPressed: () {},
//                         child: Text(
//                           'Sign In',
//                           style: GoogleFonts.poppins(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 18.0,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 20),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         'Belum punya akun? ',
//                         style: GoogleFonts.poppins(
//                           fontWeight: FontWeight.normal,
//                           fontSize: 14.0,
//                           color: Colors.white,
//                         ),
//                       ),
//                       InkWell(
//                         onTap: () {
//                           Navigator.of(context).push(
//                             MaterialPageRoute(
//                               builder: (context) => const RegisterPage(),
//                             ),
//                           );
//                         },
//                         child: Text(
//                           'REGISTER',
//                           style: GoogleFonts.poppins(
//                             fontWeight: FontWeight.normal,
//                             fontSize: 14.0,
//                             color: Colors.green,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 100),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:tokosagu/bottom_nav.dart';
// Import halaman register
import 'package:tokosagu/register.dart';
// Import halaman home
// import 'package:fluttersagu/bottomnav.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            'assets/images/logosagu.jpg',
            fit: BoxFit.cover,
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 150),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sagu ',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 32.0,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Bengkalis',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 32.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  Center(
                    child: Column(
                      children: [
                        Container(
                          width: 300,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Email',
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.zero,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: 300,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Password',
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Center(
                    child: Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          // Navigate to HomePage
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ),
                          );
                        },
                        child: Text(
                          'Sign In',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Belum punya akun? ',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.normal,
                          fontSize: 14.0,
                          color: Colors.white,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const RegisterPage(),
                            ),
                          );
                        },
                        child: Text(
                          'REGISTER',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.normal,
                            fontSize: 14.0,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 100),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
