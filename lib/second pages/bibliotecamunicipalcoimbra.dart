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
            backgroundColor: Colors.deepPurple[100],
            expandedHeight: 200,
            pinned: true,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                'https://vui.unsplash.com/resize?height=256&quality=60&type=auto&url=https%3A%2F%2Fsearched-images.s3.us-west-2.amazonaws.com%2F4ae0a24a-970f-48a7-b0f9-bb91422df11b%3FX-Amz-Algorithm%3DAWS4-HMAC-SHA256%26X-Amz-Credential%3DAKIAQ4GRIA4Q6KECABEK%252F20220620%252Fus-west-2%252Fs3%252Faws4_request%26X-Amz-Date%3D20220620T140308Z%26X-Amz-Expires%3D86400%26X-Amz-SignedHeaders%3Dhost%26X-Amz-Signature%3Dba392d38a4494913e7e40e6f9fc53fb60375b2b188286232f7483ab373a3c711&sign=pcSbN4ra4cWmC_t-ePQzMpYPi2Eovj37XkYTBht_DTU',
                fit: BoxFit.cover,
              ),
              title: Text('Biblioteca Municipal de Coimbra'),
              centerTitle: true,
            ),
            leading: IconButton(icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
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