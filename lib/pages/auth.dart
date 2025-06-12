// import 'package:flutter/material.dart';
// import 'package:modern_login_app/pages/dashboard.dart.dart';
// import 'package:modern_login_app/pages/login_page.dart';

// class Auth extends StatefulWidget {
//   const Auth({super.key});

//   @override
//   State<Auth> createState() => _AuthState();
// }

// class _AuthState extends State<Auth> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: StreamBuilder<User?>(
//         stream: FirebaseAuth.instance.authStateChanges(),
//         builder: (_, snapshot) {
//           // user logged in
//           if (snapshot.hasData) {
//             return const Dashboard();
//           }
//           // user not logged in
//           else {
//             return const LoginPage();
//           }
//         },
//       ),
//     );
//   }
// }
