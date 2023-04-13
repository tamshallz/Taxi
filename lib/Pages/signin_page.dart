import 'dart:ui';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:taxi_app/Pages/signup_page.dart';
import '../Screens/home_screen.dart';
import '../constants.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  //
  final bool _isLogin = false;
  final bool _isLoading = false;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Image.asset("Images/road.jpg").image,
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 6,
                  spreadRadius: 4,
                  color: Colors.white.withOpacity(0.1),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 16, sigmaY: 16),
                child: Container(
                  width: 320,
                  height: 520,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.03),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        width: 1.5,
                        color: Colors.white.withOpacity(0.4),
                      )),
                  child: SingleChildScrollView(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 35),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // LOGO
                              Center(
                                child: Image.asset('Images/taxi_logo.png',
                                    height: 80, width: 80),
                              ),

                              //
                              const SizedBox(height: 23),
                              Text(
                                'Sign In',
                                style: TextStyle(
                                  color: kWhite,
                                  fontWeight: FontWeight.bold,
                                  fontSize: kHeader1,
                                ),
                              ),
                              const SizedBox(height: 25),
                              _email(),
                              _password(),

                              //BUTTON SECTION
                              const SizedBox(height: 20),
                              _button(),

                              SizedBox(height: 10),
                              //
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  'Or',
                                  style: TextStyle(color: kWhite),
                                ),
                              ),

                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const SignUpScreen(),
                                    ),
                                  );
                                },
                                child: Text(
                                  'Register',
                                  style: TextStyle(
                                    fontSize: 23,
                                    color: Colors.yellow.shade700,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  _email() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: _emailController,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter a valid email';
          }
          return null;
        },
        // Decoration
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.white)),
          prefixIcon: Icon(Icons.person, color: kWhite),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.white)),
          hintText: 'Email',
          hintStyle: TextStyle(color: kWhite),
        ),
      ),
    );
  }

  _password() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        obscureText: true,
        controller: _passwordController,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter a valid password';
          }
          return null;
        },
        // Decoration
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.white)),
          prefixIcon: Icon(Icons.person, color: kWhite),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.white)),
          hintText: 'Password',
          hintStyle: TextStyle(color: kWhite),
        ),
      ),
    );
  }

  _button() {
    return SizedBox(
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            fixedSize: const Size(450, 30),
            backgroundColor: Colors.yellow.shade800
            //Color(0xffffab00),
            ),
        onPressed: () => FirebaseAuth.instance
            .signInWithEmailAndPassword(
              email: _emailController.text,
              password: _passwordController.text,
            )
            .then(
              (value) => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ))
                  .onError((error, stackTrace) =>
                      debugPrint('Error ${error.toString()}')),
            ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.login_outlined),
            SizedBox(width: 15),
            Text(
              'Sign In',
              style: TextStyle(fontSize: 23),
            ),
          ],
        ),
      ),
    );
  }
}
