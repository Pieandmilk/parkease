import 'package:flutter/material.dart';
import 'reset_password_screen.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

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
              const SizedBox(height: 32),

              // University seal
              Image.asset("assets/images/mseuf_logo.png", height: 100),

              const SizedBox(height: 24),

              const Text(
                "Email Verification",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),

              const SizedBox(height: 16),

              const Text(
                "Please enter your email address below:",
                style: TextStyle(color: Colors.black87),
              ),

              const SizedBox(height: 16),

              TextField(
                decoration: InputDecoration(
                  hintText: "Email address",
                  filled: true,
                  fillColor: Colors.white70,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),

              const SizedBox(height: 24),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  minimumSize: const Size.fromHeight(50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  // ✅ Navigate to Reset Password Screen (correct widget)
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ResetPasswordScreen(),
                    ),
                  );

                  // ✅ Optional: Show snackbar (could be moved into ResetPasswordScreen logic instead)
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Verification email sent.')),
                  );
                },
                child: const Text("Send Email", style: TextStyle(color: Colors.white)),
              ),

              const Spacer(),

              const Text(
                "Please confirm your email address by tapping the\nconfirmation button in the message we sent you.\nIf you did not request this, simply ignore the email.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black87, fontSize: 12),
              ),

              const SizedBox(height: 24),

              const Text(
                "PE",
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 24),
              ),
              const Text(
                "All Rights Reserved. 2025",
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),

              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
