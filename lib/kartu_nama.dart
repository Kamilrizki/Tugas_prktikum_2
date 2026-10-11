import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class KartuNama extends StatelessWidget {
  const KartuNama({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'kartu nama digital',
      home: Scaffold(
        backgroundColor: const Color(0xFFFFF7FF),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 10),

                // Foto profil
                const CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/image/urng.jpeg',
                  ),
                  radius: 100,
                ),

                const SizedBox(height: 10),

                // Judul
                Text(
                  'Alamat Media Sosial',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.alef(
                    fontSize: 30,
                    color: Colors.brown,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                // Nama
                Text(
                  'M kamil rizki',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.alef(
                    fontSize: 20,
                    color: const Color.fromARGB(
                      255, 175, 149, 140,
                    ),
                    fontWeight: FontWeight.bold,
                  ),
                ),

                // Garis pemisah
                SizedBox(
                  height: 10,
                  width: 300,
                  child: Divider(
                    color: Colors.brown.shade100,
                  ),
                ),

                // Nomor telepon
                _buatKartu(
                  icon: const Icon(
                    Icons.phone,
                    color: Color.fromARGB(255, 17, 17, 17),
                  ),
                  teks: '+62 821-2933-2684',
                ),

                // Email
                _buatKartu(
                  icon: const Icon(
                    Icons.email,
                    color: Color.fromARGB(255, 11, 11, 11),
                  ),
                  teks: 'Akewjpmax@gmail.com',
                ),

                // Instagram
                _buatKartu(
                  icon: const FaIcon(
                    FontAwesomeIcons.instagram,
                    color: Color.fromARGB(255, 8, 8, 8),
                  ),
                  teks: 'Akewxxyz',
                ),

                // TikTok
                _buatKartu(
                  icon: const FaIcon(
                    FontAwesomeIcons.tiktok,
                    color: Color.fromARGB(255, 2, 2, 2),
                  ),
                  teks: 'akew',
                ),

                // YouTube
                _buatKartu(
                  icon: const FaIcon(
                    FontAwesomeIcons.youtube,
                    color: Color.fromARGB(255, 20, 20, 20),
                  ),
                  teks: 'Evos akew',
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Fungsi untuk membuat kartu kontak
  Widget _buatKartu({
    required Widget icon,
    required String teks,
  }) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(
          color: Colors.brown.shade100,
          width: 1,
        ),
      ),
      color: Colors.brown.shade50,
      margin: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 25,
      ),
      child: ListTile(
        leading: icon,
        title: Text(
          teks,
          style: GoogleFonts.alef(
            fontSize: 20,
            color: const Color.fromARGB(255, 16, 16, 16),
          ),
        ),
      ),
    );
  }
}