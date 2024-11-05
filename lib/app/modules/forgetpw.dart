import 'package:cobasaja/app/components/wg_fill_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetPasswordView extends StatefulWidget {
  const ForgetPasswordView({super.key});

  @override
  State<ForgetPasswordView> createState() => _ForgetPasswordViewState();
}

class _ForgetPasswordViewState extends State<ForgetPasswordView> {
  final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          const SizedBox(height: 25,),
            Center(
              child: Image.asset("asset/icon.png",
                height: 96,
                width: 252,),
            ),

            const SizedBox(height: 60,),
            Text(
              "Lupa Password",
              style: GoogleFonts.poppins(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
              ),

            const SizedBox(height: 20,),
            Container(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pesan",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,),
                    ),
                    Text(
                      "Masukan email Anda dan tunggu kode etik akan dikirimkan.",
                      style: GoogleFonts.poppins(
                        fontSize: 16,),
                    ),

                    const SizedBox(height: 30,),
                    WgLabelTextfield(
                      controller: emailController, 
                      keyboardType: TextInputType.emailAddress, 
                      expands: false, 
                      textAlign: TextAlign.start,
                      label: "Masukan Email",
                      fieldFill: Colors.white,
                      hintText: "email@gmail.com",
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {}, 
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              fixedSize: const Size(127, 30),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: const BorderSide(
                                  color: Colors.blue
                                ),
                              )
                            ),
                            child: Text(
                              "Kirim",
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                              ),
                              )),
                        ),
                      ],
                    ),
                  ],
                ),

                ),
            ),
        ],
      )),
    );
  }
}