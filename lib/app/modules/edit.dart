import 'package:cobasaja/app/components/wg_fill_text.dart';
import 'package:cobasaja/app/components/wg_profile.dart';
import 'package:cobasaja/app/modules/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfileView extends StatefulWidget {
  const EditProfileView({super.key});

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController namaController = TextEditingController();
  final TextEditingController nomorController = TextEditingController();
  final TextEditingController alamatController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 25,),
            Center(
              child: Container(
                margin: const EdgeInsets.fromLTRB(5, 20, 5, 10),
                width: 300,
                height: 250,
                child: ListView.separated(
                  itemBuilder: (BuildContext context, int index) {
                    return const WidgetProfile(
                      nama: "Hanggraini Dea Astuti", 
                      universitas: "Universitas Teknologi Yogyakarta"
                      );
                  },
                  separatorBuilder: (context, index) => const SizedBox(width: 10,), 
                  itemCount: 1),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  WgLabelTextfield(
                    controller: emailController, 
                    keyboardType: TextInputType.emailAddress, 
                    expands: false, 
                    textAlign: TextAlign.start,
                    label: "Email",
                    fieldFill: Colors.white,
                    hintText: "hanggraini@gmail.com",
                  ),

                  const SizedBox(height: 20,),
                  WgLabelTextfield(
                    controller: namaController, 
                    keyboardType: TextInputType.text, 
                    expands: false, 
                    textAlign: TextAlign.start,
                    label: "Nama",
                    fieldFill: Colors.white,
                    hintText: "Hanggraini",
                  ),

                  const SizedBox(height: 20,),
                  WgLabelTextfield(
                    controller: nomorController, 
                    keyboardType: TextInputType.phone, 
                    expands: false, 
                    textAlign: TextAlign.start,
                    label: "Nomor Telephone",
                    fieldFill: Colors.white,
                    hintText: "0123456789",
                  ),

                  const SizedBox(height: 20,),
                  WgLabelTextfield(
                    controller: alamatController, 
                    keyboardType: TextInputType.text, 
                    expands: false, 
                    textAlign: TextAlign.start,
                    label: "Alamat",
                    fieldFill: Colors.white,
                    hintText: "Jl. Ringroad Utara",
                  ),

                  const SizedBox(height:  20),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => const ProfileView()));
                            }, 
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              fixedSize: const Size(100, 30),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: const BorderSide(
                                  color: Colors.blue
                                ),
                              )
                            ),
                            child: Text(
                              "Ubah Profile",
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                              ),
                              )),
                        ),
                      ],
                    ),
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}