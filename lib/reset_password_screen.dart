import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  _ResetPasswordScreenState createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2E2E2E),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: const Color(0xFF8B2F2F),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/mseuf_logo.png',
                      height: 100,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Change Password",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 20),
                    // New Password
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text("New Password:", style: TextStyle(fontSize: 12)),
                    ),
                    const SizedBox(height: 4),
                    TextFormField(
                      obscureText: _obscurePassword,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xFFEDE3FF),
                        hintText: "Enter New Password",
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
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    // Confirm Password
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Confirm Password:", style: TextStyle(fontSize: 12)),
                    ),
                    const SizedBox(height: 4),
                    TextFormField(
                      obscureText: _obscureConfirmPassword,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xFFEDE3FF),
                        hintText: "Enter Confirm Password",
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureConfirmPassword ? Icons.visibility_off : Icons.visibility,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscureConfirmPassword = !_obscureConfirmPassword;
                            });
                          },
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red[900],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                      ),
                      onPressed: () {
                        // Handle password reset logic
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Password changed successfully.")),
                        );
                        Navigator.pop(context); // Go back to login or previous screen
                      },
                      child: const Text("Save Changes",  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                "PE",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "All Rights Reserved. 2025",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 12,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
