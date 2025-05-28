import 'package:flutter/material.dart';
import 'area_selection_screen.dart';
class ReserveScreen extends StatefulWidget {
  const ReserveScreen({super.key});

  @override
  State<ReserveScreen> createState() => _ReserveScreenState();
}

class _ReserveScreenState extends State<ReserveScreen> {
  String selectedVehicle = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            // Logo and Tagline
            Column(
              children: const [
                Text(
                  "PE",
                  style: TextStyle(
                    fontSize: 80,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF8B0000),
                    letterSpacing: 4,
                  ),
                ),
                Text(
                  "Find Your",
                  style: TextStyle(fontSize: 20, color: Colors.black87),
                ),
                Text(
                  "Parking Space",
                  style: TextStyle(fontSize: 20, color: Colors.black87),
                ),
                SizedBox(height: 30),
              ],
            ),

            // Selection Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _vehicleOption(
                  icon: Icons.directions_car_filled,
                  label: "CAR",
                  isSelected: selectedVehicle == "car",
                  onTap: () => setState(() => selectedVehicle = "car"),
                ),
                _vehicleOption(
                  icon: Icons.motorcycle,
                  label: "MOTOR",
                  isSelected: selectedVehicle == "motor",
                  onTap: () => setState(() => selectedVehicle = "motor"),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Select Button
            ElevatedButton(
              onPressed: selectedVehicle.isNotEmpty
                  ? () {
                // Inside the onPressed of the Select button
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AreaSelectionScreen(vehicleType: selectedVehicle)),
                );

              }
                  : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF9E0909),
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
              child: const Text("Select", style: TextStyle(color: Colors.white70,fontSize: 16)),
            ),

            const SizedBox(height: 30),

            // Image preview
            if (selectedVehicle == "car")
              Image.asset(
                'assets/images/car_front.png', // Add your actual car image here
                height: 180,
              ),
            if (selectedVehicle == "motor")
              Image.asset(
                'assets/images/motor_front.png', // Add your actual motor image here
                height: 180,
              ),
          ],
        ),
      ),
    );
  }

  Widget _vehicleOption({
    required IconData icon,
    required String label,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 130,
        height: 120,
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF8B0000) : const Color(0xFFB22222),
          borderRadius: BorderRadius.circular(15),
          boxShadow: isSelected
              ? [BoxShadow(color: Colors.black26, blurRadius: 6, offset: Offset(2, 2))]
              : [],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 36, color: Colors.white),
            const SizedBox(height: 10),
            Text(label, style: const TextStyle(color: Colors.white, fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
