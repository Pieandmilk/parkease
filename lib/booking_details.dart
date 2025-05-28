import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'main_menu.dart';
class BookingDetailScreen extends StatelessWidget {
  final String area;
  final int slotIndex;
  final DateTime bookingTime;
  final String vehicleType;

  const BookingDetailScreen({
    Key? key,
    required this.area,
    required this.slotIndex,
    required this.bookingTime,
    required this.vehicleType,
  }) : super(key: key);

  String getVehicleImagePath() {
    return vehicleType == 'car'
        ? 'assets/images/car_front.png'
        : 'assets/images/motor_front.png';
  }

  String formatTime(DateTime time) {
    return DateFormat('MMM dd, yyyy – hh:mm a').format(time);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black54,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => MainMenuScreen(username: "EnverganUser")),
                  (route) => false, // removes all previous routes
            );
          }
          // Add other cases if you want other buttons to navigate too
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_parking),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.warning),
            label: 'Violations',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),

      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.red[800],
              padding: const EdgeInsets.symmetric(vertical: 16),
              width: double.infinity,
              child: const Center(
                child: Text(
                  'Booking Detail',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.red[700],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Text(
                    'Area: $area',
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Text(
                    'Slot: ${slotIndex + 1}',
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Text(
                    'Time: ${formatTime(bookingTime)}',
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            Expanded(
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.red, width: 8),
                  ),
                  padding: const EdgeInsets.all(40),
                  child: Image.asset(
                    getVehicleImagePath(),
                    height: 160,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
