import 'package:flutter/material.dart';
import 'package:pet_care/View/home_view.dart';
import 'package:pet_care/View/registration_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

Widget _buildImageTile(String assetPath) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
    ),
    child: Center(
      child: Image.asset(assetPath, fit: BoxFit.contain),
    ),
  );
}

Widget _buildSocialIcon(IconData icon, Color color) {
  return CircleAvatar(
    backgroundColor: Colors.white,
    radius: 25,
    child: Icon(icon, color: color, size: 30),
  );
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Title and Image Grid
            const Column(
              children: [
                SizedBox(height: 20),
                Text(
                  "PET ME NOW",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                  // child: const GridView.count(
                  //   shrinkWrap: true,
                  //   crossAxisCount: 2,
                  //   crossAxisSpacing: 10,
                  //   mainAxisSpacing: 10,
                  //   children: [
                  //     _buildImageTile('assets/image/download (1).jpeg'),
                  //     _buildImageTile('assets/image/download (2).jpeg'),
                  //     _buildImageTile('assets/image/download (3).jpeg'),
                  //     _buildImageTile('assets/image/download (4).jpeg'),
                  //   ],
                  // ),
                ),
              ],
            ),

            // Login Form
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: 'User Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.lock),
                      hintText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: _rememberMe,
                            onChanged: (value) {
                              setState(() {
                                _rememberMe = value ?? false;
                              });
                            },
                          ),
                          const Text("Remember Me"),
                        ],
                      ),
                      TextButton(
                        onPressed: () {
                          // Handle forgot password
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text("Forgot Password clicked")),
                          );
                        },
                        child: const Text("Forgot Password?"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to Home Page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeView()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      minimumSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Footer
            const SizedBox(height: 16.0),
            Column(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegistrationScreen()),
                    );
                    // Handle create account
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Create Account clicked")),
                    );
                  },
                  child: const Text(
                    "Don't have aa account? Create Account",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildSocialIcon(Icons.facebook, Colors.blue),
                    SizedBox(width: 20),
                    _buildSocialIcon(Icons.facebook, Colors.lightBlue),
                    SizedBox(width: 20),
                    _buildSocialIcon(Icons.pets, Colors.green),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
