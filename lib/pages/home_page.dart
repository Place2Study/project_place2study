import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_place2study/second%20pages/bibliotecadem.dart';
import 'package:project_place2study/second%20pages/bibliotecaiscac.dart';
import 'package:project_place2study/second%20pages/bibliotecamunicipalcoimbra.dart';
import 'package:project_place2study/second%20pages/bibliotecauc.dart';
import 'package:project_place2study/second%20pages/justicaepaz.dart';
import 'package:project_place2study/second%20pages/saladeestudodcv.dart';
import 'package:project_place2study/second%20pages/tagv.dart';
import 'package:project_place2study/second%20pages/neeec.dart';
import 'package:project_place2study/second%20pages/bibliotecafeuc.dart';

import '../main.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: CustomScrollView(
        slivers: <Widget> [
          // sliver app bar
          SliverAppBar(
            pinned: true,
            expandedHeight: 200,
            floating: true,
            backgroundColor: Colors.deepPurple[100],
            automaticallyImplyLeading: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                'https://vui.unsplash.com/resize?height=256&quality=60&type=auto&url=https%3A%2F%2Fsearched-images.s3.us-west-2.amazonaws.com%2F9afe0500-74bd-4f1a-8c5b-da2b0c57e305%3FX-Amz-Algorithm%3DAWS4-HMAC-SHA256%26X-Amz-Credential%3DAKIAQ4GRIA4Q6KECABEK%252F20220710%252Fus-west-2%252Fs3%252Faws4_request%26X-Amz-Date%3D20220710T170744Z%26X-Amz-Expires%3D86400%26X-Amz-SignedHeaders%3Dhost%26X-Amz-Signature%3Dbb64787e8d14fdd0065a4ea745fb218389ba5acf47f93f5fd55d95b009c701f2&sign=QBfYTJ8YLFmg9N3lejEjCTTf88_KuHqtpLESMgjwWiY',
                fit: BoxFit.cover,
              ),
            ),
            leading: IconButton(icon: Icon(Icons.school),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyApp()));
              },
            ),
          ),

          // sliver items
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BibliotecaISCAC()),
                    );
                  },

                  child: Container(
                    height: 80,
                    color: Colors.deepPurple[300],
                    child: Column(
                      children: [
                        Text('Biblioteca ISCAC',
                          style: GoogleFonts.bebasNeue(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),


                        Text('Horário: 9h às 22h',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BibliotecaMunicipalCoimbra()),
                    );
                  },

                  child: Container(
                    height: 80,
                    color: Colors.deepPurple[300],
                    child: Column(
                      children: [
                        Text('Biblioteca Municipal de Coimbra',
                          style: GoogleFonts.bebasNeue(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),


                        Text('Horário: 10h às 19h30',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BibliotecaUC()),
                    );
                  },

                  child: Container(
                    height: 80,
                    color: Colors.deepPurple[300],
                    child: Column(
                      children: [
                        Text('Biblioteca UC',
                          style: GoogleFonts.bebasNeue(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),


                        Text('Horário: 9h às 22h',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Tagv()),
                    );
                  },

                  child: Container(
                    height: 80,
                    color: Colors.deepPurple[300],
                    child: Column(
                      children: [
                        Text('Tagv',
                          style: GoogleFonts.bebasNeue(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                        Text('Horário: 14h às 00h',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),


                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BibliotecaFEUC()),
                    );
                  },

                  child: Container(
                    height: 80,
                    color: Colors.deepPurple[300],
                    child: Column(
                      children: [
                        Text('Biblioteca FEUC',
                          style: GoogleFonts.bebasNeue(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),


                        Text('Horário: 09h às 00h',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),


                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Neeec()),
                    );
                  },

                  child: Container(
                    height: 80,
                    color: Colors.deepPurple[300],
                    child: Column(
                      children: [
                        Text('NEEEC',
                          style: GoogleFonts.bebasNeue(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),


                        Text('Horário: 14h às 00h',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SaladeEstudoDCV()),
                    );
                  },

                  child: Container(
                    height: 80,
                    color: Colors.deepPurple[300],
                    child: Column(
                      children: [
                        Text('Sala de estudo do DCV',
                          style: GoogleFonts.bebasNeue(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),


                        Text('Horário: 09h às 17h30',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),


          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => JusticaePAZ()),
                    );
                  },

                  child: Container(
                    height: 80,
                    color: Colors.deepPurple[300],
                    child: Column(
                      children: [
                        Text('Justiça e Paz',
                          style: GoogleFonts.bebasNeue(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),


                        Text('Horário: 08h30 às 19h',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BibliotecaDEM()),
                    );
                  },

                  child: Container(
                    height: 80,
                    color: Colors.deepPurple[300],
                    child: Column(
                      children: [
                        Text('Biblioteca do DEM',
                          style: GoogleFonts.bebasNeue(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),


                        Text('Horário: 09h às 22h',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),


                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}

