import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetGrid extends StatelessWidget {
  final String artis;
  final String song;
  const WidgetGrid({super.key, required this.artis, required this.song});

  @override
  Widget build(BuildContext context) {

    return Card(
      child: Column(
        children: [
          Image.asset("asset/SO7.jpg", height: 150, width: 150,),
          Text(artis,
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              ),
          ),
          Text(song,
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