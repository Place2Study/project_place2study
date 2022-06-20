import 'dart:io';

import 'package:flutter/material.dart';
import 'package:project_place2study/pages/home_page.dart';

class BibliotecaISCAC extends StatefulWidget {
  const BibliotecaISCAC({Key? key}) : super(key: key);

  @override
  State<BibliotecaISCAC> createState() => _BibliotecaISCACState();
}

class _BibliotecaISCACState extends State<BibliotecaISCAC> {


  int _pessoas=0;
  String _situacao="Há Vagas";

  void _mudapessoas(int valor){
    setState(() {
      _pessoas+=valor;
      if (_pessoas>5){
        _situacao= "Sala Lotada";
      }else{
        _situacao="Há Vagas";
      }
    });
  }


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
              'https://vui.unsplash.com/resize?height=256&quality=60&type=auto&url=https%3A%2F%2Fsearched-images.s3.us-west-2.amazonaws.com%2Fd64a0a3b-8c2c-43ff-be13-26c42bfc2f30%3FX-Amz-Algorithm%3DAWS4-HMAC-SHA256%26X-Amz-Credential%3DAKIAQ4GRIA4Q6KECABEK%252F20220620%252Fus-west-2%252Fs3%252Faws4_request%26X-Amz-Date%3D20220620T133438Z%26X-Amz-Expires%3D86400%26X-Amz-SignedHeaders%3Dhost%26X-Amz-Signature%3Dcb65c59e0a90155fc9412bdd8b23a14d73b251eb9773fcd77dbb73901df2b627&sign=VjfTcBvOW4_8SE7CyZErOf4xuC3jU_VCn4P7rr10S6k',
              fit: BoxFit.cover,
            ),
            title: Text('Biblioteca ISCAC'),
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
                  height: 250,
                  color: Colors.deepPurple[300],
                  child: Column(
                    children: [
                      Text('Quinta Agrícola - Bencanta | 3040-316',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          height: 2.5,
                        ),
                      ),
                      Text('239 802 000',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          height: 1.5,
                        ),
                      ),

                      Text('Horário:',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          height: 3,
                        ),
                      ),
                      Text('De Segunda a Sábado :',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          height: 1,
                        ),
                      ),
                      Text('-> Das 09h à 22h',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          height: 1,
                        ),
                      ),

                      Text('Lotação :',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          height: 3,
                        ),
                      ),
                      Text('Lotação Máxima - 50 pessoas',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          height: 1,
                        ),
                      ),
                    ],
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
                child: Container(
                  width: double.infinity,
                  height: 200,
                  color: Colors.deepPurple[300],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                  Text("Situação: $_situacao", style: TextStyle(fontSize: 25, color: Colors.white),),
                  SizedBox(height: 20,),
                  Text("Quantidade de Pessoas: $_pessoas" ,
                    style: TextStyle(fontSize:22, color: Colors.white,),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                  RaisedButton(
                  child: Text('Entrar',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  onPressed:(){
                    _mudapessoas(1);
                  },
                  color: Colors.deepPurple[100],
                ),

                RaisedButton(
                  child: Text('Sair',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  onPressed:(){
                    _mudapessoas(-1);
                  },
                  color: Colors.deepPurple[100],
                ),
              ],
            ),
          ],
        ),
      ),
    ),
    ),
      )
    ],
    )
    );

  }
}
