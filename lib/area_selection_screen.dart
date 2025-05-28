import 'package:flutter/material.dart';
import 'slot_selection_screen.dart';

class AreaSelectionScreen extends StatelessWidget {
  final String vehicleType;

  const AreaSelectionScreen({super.key, required this.vehicleType});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF8B0000),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
              ),
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 20),
                  const Center(
                    child: Text(
                      "Choose an Area You Wanted to Park",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF8B0000),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 30),

                  const Text("Outside of Campus", style: TextStyle(color: Colors.black87)),
                  const SizedBox(height: 10),
                  _areaButton(context, "Gate 3 - Parking A"),
                  _areaButton(context, "Gate 3 - Parking B"),

                  const SizedBox(height: 20),
                  const Divider(),

                  const SizedBox(height: 10),
                  const Text("Inside of Campus", style: TextStyle(color: Colors.black87)),
                  const SizedBox(height: 10),
                  _areaButton(context, "Gate 1"),
                  _areaButton(context, "Nursing"),
                  _areaButton(context, "Student Lounge"),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _areaButton(BuildContext context, String areaLabel) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: ElevatedButton.icon(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SlotSelectionScreen(
                selectedArea: areaLabel,
                vehicleType: vehicleType,
              ),
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF8B0000),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        icon: const Icon(Icons.local_parking, color: Colors.white),
        label: Text(areaLabel, style: const TextStyle(color: Colors.white, fontSize: 16)),
      ),
    );
  }
}
