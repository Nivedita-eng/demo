import 'package:flutter/material.dart';

class MyBookings extends StatelessWidget {
  const MyBookings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/logo.jpg',
              fit: BoxFit.contain,
              height: 55.0,
              width: 60.0,
            ),
            const SizedBox(
              width: 20,
            ),
            const Text(
              'Aalay',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
      
    );

  }

 }


class BookingCard extends StatelessWidget {
  final Map<String, String> booking;

  const BookingCard({required this.booking});

  @override
  Widget build(BuildContext context) {
    Color statusColor;
    if (booking['status'] == 'Rejected') {
      statusColor = Colors.orange;
    } else {
      statusColor = Colors.red;
    }

    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: statusColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            booking['status']!,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 8),
          BookingDetailRow(
            icon: Icons.calendar_today,
            detail: 'Booking From: ${booking['from']}',
          ),
          BookingDetailRow(
            icon: Icons.person,
            detail: booking['name']!,
          ),
          BookingDetailRow(
            icon: Icons.home,
            detail: booking['response']!,
          ),
          BookingDetailRow(
            icon: Icons.calendar_today,
            detail: 'No. of Days: ${booking['days']}',
          ),
          BookingDetailRow(
            icon: Icons.meeting_room,
            detail: 'No. of Rooms: ${booking['rooms']}',
          ),
        ],
      ),
    );
  }
}

class BookingDetailRow extends StatelessWidget {
  final IconData icon;
  final String detail;

  const BookingDetailRow({required this.icon, required this.detail});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.white,
        ),
        SizedBox(width: 8),
        Text(
          detail,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
