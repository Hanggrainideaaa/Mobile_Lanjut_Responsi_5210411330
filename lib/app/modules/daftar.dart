import 'package:cobasaja/app/components/wg_fill_text.dart';
import 'package:cobasaja/app/modules/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DaftarView extends StatefulWidget {
  const DaftarView({super.key});

  @override
  State<DaftarView> createState() => _DaftarViewState();
}

class _DaftarViewState extends State<DaftarView> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController konfirmpasswordController = TextEditingController();
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
              "Daftar",
              style: GoogleFonts.poppins(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
              ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const SizedBox(height: 20,),
                    WgLabelTextfield(
                      controller: emailController, 
                      keyboardType: TextInputType.emailAddress, 
                      expands: false, 
                      textAlign: TextAlign.start,
                      label: "Masukan Email",
                      fieldFill: Colors.white,
                      hintText: "email@gmail.com",
                      ),

                    const SizedBox(height: 20,),
                    WgLabelTextfield(
                      controller: passwordController, 
                      keyboardType: TextInputType.text, 
                      expands: false, 
                      textAlign: TextAlign.start,
                      label: "Masukan Password",
                      fieldFill: Colors.white,
                      hintText: "Password",
                      ),

                    const SizedBox(height: 20,),
                    WgLabelTextfield(
                      controller: konfirmpasswordController, 
                      keyboardType: TextInputType.text, 
                      expands: false, 
                      textAlign: TextAlign.start,
                      label: "Masukan Kembali Password",
                      fieldFill: Colors.white,
                      hintText: "Konfirmasi Password",
                      ),

                    const SizedBox(height: 20,),
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
                              "Daftar",
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                              ),
                              )),
                        ),
                      ],
                    ),

                  const SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center( // Add Center widget here
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center, // Center within the Row
                              children: [
                                Text(
                                  "Sudah memiliki akun?",
                                  style: GoogleFonts.poppins(fontSize: 16),
                                ),
                                const SizedBox(width: 5), 
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (context) => const LoginView()));
                                  },
                                  child: Text(
                                    "Masuk",
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                ],
              ),
              )
        ],
      )),
    );
  }
}