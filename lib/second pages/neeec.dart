import 'package:flutter/material.dart';
import 'package:project_place2study/pages/home_page.dart';

class Neeec extends StatefulWidget {
  const Neeec({Key? key}) : super(key: key);

  @override
  State<Neeec> createState() => _NeeecState();
}

class _NeeecState extends State<Neeec> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: CustomScrollView(
        slivers:[
          // sliver app bar
          SliverAppBar(
            backgroundColor: Colors.deepPurple[100],
            expandedHeight: 200,
            pinned: true,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                'https://vui.unsplash.com/resize?height=256&quality=60&type=auto&url=https%3A%2F%2Fsearched-images.s3.us-west-2.amazonaws.com%2F40bef8a4-ba66-4aea-b974-66316546c395%3FX-Amz-Algorithm%3DAWS4-HMAC-SHA256%26X-Amz-Credential%3DAKIAQ4GRIA4Q6KECABEK%252F20220620%252Fus-west-2%252Fs3%252Faws4_request%26X-Amz-Date%3D20220620T140944Z%26X-Amz-Expires%3D86400%26X-Amz-SignedHeaders%3Dhost%26X-Amz-Signature%3D7ee16fdb0f8438abda2bba528bfb14c26f0bd31d809fa48d812c0a00a0c49e2c&sign=G9JItO1Fxn_xzZR-PTtwuyFWsA3cOVzi392A7C-NQyw',
                fit: BoxFit.cover,
              ),
              title: Text('NEEEC'),
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
                  child: Text(' ',
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