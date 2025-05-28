import 'package:flutter/material.dart';
import 'main_menu.dart';
import 'forgot_password_screen.dart';
class FacultyLoginScreen extends StatefulWidget {
  const FacultyLoginScreen({super.key});

  @override
  State<FacultyLoginScreen> createState() => _FacultyLoginScreenState();
}

class _FacultyLoginScreenState extends State<FacultyLoginScreen> {
  bool _obscurePassword = true;
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD0312D), // Deep red background
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "STUDENT",
                    style: TextStyle(
                      color: Colors.white54,
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "FACULTY",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              const Text(
                "PE",
                style: TextStyle(
                  fontSize: 64,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const Text(
                "ParkEase",
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                ),
              ),
              const Text(
                "Login",
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                ),
              ),

              const SizedBox(height: 32),

              // Faculty ID
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Faculty ID",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter ID",
                  filled: true,
                  fillColor: Colors.white70,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                ),
              ),
              const SizedBox(height: 16),

              // Password
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Enter Password",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                obscureText: _obscurePassword,
                decoration: InputDecoration(
                  hintText: "Password",
                  filled: true,
                  fillColor: Colors.white70,
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword ? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscurePassword = !_obscurePassword;
                      });
                    },
                  ),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                ),
              ),

              const SizedBox(height: 8),

              Row(
                children: [
                  Checkbox(
                    value: _rememberMe,
                    onChanged: (value) {
                      setState(() {
                        _rememberMe = value!;
                      });
                    },
                  ),
                  const Text(
                    "Remember me?",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // University seal
              Image.asset("assets/images/mseuf_logo.png", height: 60),

              const SizedBox(height: 16),

              // Log in Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade900,
                  minimumSize: const Size.fromHeight(50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => MainMenuScreen(username: "EnverganUser")),
                  );
                },
                child: const Text("Log in",
                    style: TextStyle(color: Colors.white70)),
              ),

              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ForgotPasswordScreen()),
                  );
                },
                child: const Text(
                  "Forgot Password?",
                  style: TextStyle(color: Colors.white70),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
