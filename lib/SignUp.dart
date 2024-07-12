// import 'package:flutter/material.dart';
// import 'loginpage.dart'; // Import halaman login
// import 'package:google_fonts/google_fonts.dart';

// class SignUpPage extends StatelessWidget {
//   const SignUpPage({Key? key});

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
//             child: Column(
//               mainAxisAlignment:
//                   MainAxisAlignment.end, // Menempatkan column di bagian bawah
//               crossAxisAlignment:
//                   CrossAxisAlignment.start, // Menempatkan text ke kiri
//               children: <Widget>[
//                 SizedBox(height: 200), // Spasi antara gambar dan teks
//                 Text(
//                   'Sagu',
//                   style: GoogleFonts.poppins(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 32.0,
//                     color: Colors.white,
//                   ),
//                 ),
//                 Text(
//                   'Bengkalis',
//                   style: GoogleFonts.poppins(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 32.0,
//                     color: Colors.white,
//                   ),
//                 ),
//                 SizedBox(height: 50), // Spasi antara teks dan tombol
//                 Container(
//                   width: 300,
//                   height: 50,
//                   decoration: BoxDecoration(
//                     color: Colors.green,
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.green,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                     ),
//                     onPressed: () {
//                       Navigator.of(context).push(
//                         MaterialPageRoute(
//                           builder: (context) => const LoginPage(),
//                         ),
//                       );
//                     },
//                     child: Text(
//                       'Sign Up',
//                       style: GoogleFonts.poppins(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 18.0,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 InkWell(
//                   onTap: () {
//                     Navigator.of(context).push(
//                       MaterialPageRoute(
//                         builder: (context) => const LoginPage(),
//                       ),
//                     );
//                   },
//                   child: Text(
//                     'LOGIN',
//                     style: GoogleFonts.poppins(
//                       fontWeight: FontWeight.normal,
//                       fontSize: 14.0,
//                       color: Colors.green,
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                     height:
//                         100), // Spasi antara teks LOGIN dan bagian bawah layar
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'loginPage.dart'; // Import halaman login
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key});

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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 200),
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
                  // Perubahan disini, menggunakan Center widget
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
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ),
                        );
                      },
                      child: Text(
                        'Sign Up',
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
                      'Sudah punya akun? ',
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
                            builder: (context) => const LoginPage(),
                          ),
                        );
                      },
                      child: Text(
                        'LOGIN',
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
        ],
      ),
    );
  }
}
