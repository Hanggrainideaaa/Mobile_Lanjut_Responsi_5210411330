import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetList extends StatelessWidget {
  final String headline;
  final String deskripsi;
  final String date;
  final String time;
  const WidgetList({
    super.key,
    required this.headline,
    required this.deskripsi,
    required this.date,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Image.asset(
            "asset/SO7.jpg",
            height: 100,
            width: 100,
            fit: BoxFit.fitWidth,
          ),
          const SizedBox(width: 10,),
          Expanded(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  headline,
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    ),
                ),
                const SizedBox(height: 4,),
                Text(
                  deskripsi,
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    ),
                ),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.add_circle_outline_outlined),
                        const SizedBox(width: 10,),
                        Text(
                          date,
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            ),
                        ),
                        const SizedBox(width: 10,),
                        Text(
                          time,
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            ),
                        ),
                      ],
                    ),
                    const Icon(Icons.play_circle, size: 24,)
                  ],
                )
              ],
            ) 
          )
        ],
      ),
    );
  }
}