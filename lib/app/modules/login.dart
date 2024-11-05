import 'package:cobasaja/app/components/wg_fill_text.dart';
import 'package:cobasaja/app/modules/daftar.dart';
import 'package:cobasaja/app/modules/forgetpw.dart';
import 'package:cobasaja/app/modules/navigation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 25,),
            Center(
              child: Image.asset("asset/icon.png",
                height: 96,
                width: 252,),
            ),
            const SizedBox(height: 60,),
            Text(
              "Masuk",
              style: GoogleFonts.poppins(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
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
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Email tidak boleh kosong";
                        }
                        if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                          return "Format email tidak valid";
                        }
                        return null;
                      },
                    ),

                    const SizedBox(height: 20,),
                    WgLabelTextfield(
                      controller: passwwordController, 
                      keyboardType: TextInputType.text, 
                      expands: false, 
                      textAlign: TextAlign.start,
                      label: "Masukan Password",
                      fieldFill: Colors.white,
                      hintText: "Password"
                      ),

                    const SizedBox(height: 10,),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => const ForgetPasswordView()));
                      },
                      child: Text(
                        "Lupa password?",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.blue,
                        ),
                      ),
                    ),

                    const SizedBox(height: 20,),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                      builder: (context) => const NavigationView()));
                            }, 
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
                              "Masuk",
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
                                  "Belum punya akun?",
                                  style: GoogleFonts.poppins(fontSize: 16),
                                ),
                                const SizedBox(width: 5), 
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (context) => const DaftarView()));
                                  },
                                  child: Text(
                                    "Daftar",
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
              ), 
          ],
      )),
    );
  }
}