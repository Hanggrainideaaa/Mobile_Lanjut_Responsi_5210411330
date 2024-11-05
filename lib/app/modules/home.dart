import 'package:cobasaja/app/components/wg_grid_custom.dart';
import 'package:cobasaja/app/components/wg_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Icon(Icons.person),
                  Row(
                    children: [
                      Icon(Icons.notifications_none),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(Icons.settings),
                    ],
                  )
                ],),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Guest",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                      ),
                      const SizedBox( height: 23,),
                      Row(
                        children: [
                          Text(
                            "Widget Grid View",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                          ),
                          const SizedBox( width: 15,),
                          const Icon(Icons.arrow_forward_ios_rounded)
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                        height: 210,
                        child: ListView.separated(
                          itemBuilder: (BuildContext context, int index) {
                            return const WidgetGrid(
                              artis: "SeilaOn7", 
                              song: "Kita"
                              );
                          }, 
                          separatorBuilder: (context, index) => const SizedBox(width: 10,), 
                          itemCount: 10,
                          shrinkWrap: true,
                          physics: const ClampingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          )
                      ),
                      Row(
                        children: [
                          Text(
                            "Widget List View",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                          ),
                          const SizedBox( width: 15,),
                          const Icon(Icons.arrow_forward_ios_rounded)
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                        height: 326,
                        child: ListView.separated(
                          itemBuilder: (BuildContext context, int index) {
                            return const WidgetList(
                              headline: "SheilaOn7 - Kita", 
                              deskripsi: "Lagu yang bercerita tentang makna persahabatan sejati", 
                              date: "Kemarin", 
                              time: "3 menit");
                          }, 
                          separatorBuilder: (context, index) => const SizedBox( width: 10,), 
                          itemCount: 10,
                          shrinkWrap: true,
                          physics: const ClampingScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}