import 'package:cobasaja/app/components/wg_profile.dart';
import 'package:cobasaja/app/modules/edit.dart';
import 'package:cobasaja/app/modules/notifikasi.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
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

            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => const EditProfileView()));
              },
              child: const ListTile(
                title: Text(
                  "Kelola Akun",
                  style: TextStyle(
                    fontSize: 18
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
              ),
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => const NotifView()));
              },
              child: const ListTile(
                title: Text(
                  "Notifikasi",
                  style: TextStyle(
                    fontSize: 18
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
              ),
            ),

            const ListTile(
              title: Text(
                "Privacy Policy",
                style: TextStyle(
                  fontSize: 18
                ),
              ),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),

            const ListTile(
              title: Text(
                "Terms of Service",
                style: TextStyle(
                  fontSize: 18
                ),
              ),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            )

          ],
        )
      ),
    );
  }
}