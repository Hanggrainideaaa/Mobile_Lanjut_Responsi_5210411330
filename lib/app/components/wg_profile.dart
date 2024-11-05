import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetProfile extends StatelessWidget {
  final String nama;
  final String universitas;
  const WidgetProfile({super.key, required this.nama, required this.universitas});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset("asset/profile.jpg", height: 150, width: 150,),
          Text(nama,
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              ),
          ),
          Text(universitas,
            style: GoogleFonts.poppins(
                color: const Color.fromARGB(255, 68, 67, 67),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
          ),
        ],
      ),
    );
  }
}