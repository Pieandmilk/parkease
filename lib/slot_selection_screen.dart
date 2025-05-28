import 'package:flutter/material.dart';
import 'booking_details.dart';

class SlotSelectionScreen extends StatefulWidget {
  final String selectedArea;
  final String vehicleType;

  const SlotSelectionScreen({
    super.key,
    required this.selectedArea,
    required this.vehicleType,
  });

  @override
  State<SlotSelectionScreen> createState() => _SlotSelectionScreenState();
}

class _SlotSelectionScreenState extends State<SlotSelectionScreen> {
  int? selectedSlotIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF8B0000),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color(0xFF8B0000),
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      const Text(
                        'Where do you like to park?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        widget.selectedArea,
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Wrap(
                        alignment: WrapAlignment.center,
                        spacing: 15,
                        runSpacing: 15,
                        children: List.generate(10, (index) {
                          final isSelected = selectedSlotIndex == index;
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedSlotIndex = index;
                              });
                            },
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: isSelected ? Colors.white : Colors.white24,
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          );
                        }),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.white),
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    ),
                    child: const Text(
                      'Cancel',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: selectedSlotIndex != null
                        ? () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BookingDetailScreen(
                            area: widget.selectedArea,
                            slotIndex: selectedSlotIndex!,
                            bookingTime: DateTime.now(),
                            vehicleType: widget.vehicleType,
                          ),
                        ),
                      );

                      print('Reserved slot: $selectedSlotIndex at ${widget.selectedArea}');
                    }
                        : null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    ),
                    child: const Text(
                      'Confirm',
                      style: TextStyle(color: Color(0xFF8B0000)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
