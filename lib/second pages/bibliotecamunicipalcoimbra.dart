import 'package:flutter/material.dart';
import 'package:project_place2study/pages/home_page.dart';

class BibliotecaMunicipalCoimbra extends StatefulWidget {

  @override
  State<BibliotecaMunicipalCoimbra> createState() => _BibliotecaMunicipalCoimbraState();
}

class _BibliotecaMunicipalCoimbraState extends State<BibliotecaMunicipalCoimbra> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: CustomScrollView(
        slivers: [
          // sliver app bar
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.deepPurple[100],
            leading: IconButton(icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
            title: Text('P L A C E  2  S T U D Y'),
            centerTitle: true,
          ),

          // sliver item
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 650,
                  color: Colors.deepPurple[300],
                  child: Text('Teatro Académico Gil Vicente (TAGV)',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),

                    textAlign: TextAlign.center,
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