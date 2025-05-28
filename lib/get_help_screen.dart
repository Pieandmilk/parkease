import 'package:flutter/material.dart';

class GetHelpScreen extends StatefulWidget {
  const GetHelpScreen({super.key});

  @override
  State<GetHelpScreen> createState() => _GetHelpScreen();
}

class _GetHelpScreen extends State<GetHelpScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController concernController = TextEditingController();
  int selectedStars = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF851E1E), // Maroon background
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                // Logo
                Text(
                  'PE',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    letterSpacing: 2,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'ParkEase',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'CHAT SUPPORT',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    letterSpacing: 1.2,
                  ),
                ),
                SizedBox(height: 30),

                // White Form Container
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Full name
                      Text("Student Number:", style: _labelStyle()),
                      SizedBox(height: 5),
                      _buildTextField(nameController, "Full name"),

                      SizedBox(height: 20),

                      // Email
                      Text("Email Address:", style: _labelStyle()),
                      SizedBox(height: 5),
                      _buildTextField(emailController, "Email"),

                      SizedBox(height: 20),

                      // Star rating
                      Text(
                        "Share your experience in scaling our app:",
                        style: _labelStyle(),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: List.generate(5, (index) {
                          return IconButton(
                            onPressed: () {
                              setState(() {
                                selectedStars = index + 1;
                              });
                            },
                            icon: Icon(
                              Icons.star,
                              color: index < selectedStars
                                  ? Colors.yellow
                                  : Colors.grey.shade300,
                            ),
                          );
                        }),
                      ),

                      // Concern field
                      SizedBox(height: 10),
                      _buildTextField(concernController, "Add Your Concern...",
                          maxLines: 5),

                      // Buttons
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text("Cancel"),
                          ),
                          SizedBox(width: 16),
                          ElevatedButton(
                            onPressed: () {
                              // TODO: handle submission
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 24,
                                vertical: 12,
                              ),
                            ),
                            child: Text("Submit"),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextStyle _labelStyle() => TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Colors.black87,
  );

  Widget _buildTextField(TextEditingController controller, String hintText,
      {int maxLines = 1}) {
    return TextField(
      controller: controller,
      maxLines: maxLines,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xFFF6EDFF),
        hintText: hintText,
        contentPadding:
        const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
