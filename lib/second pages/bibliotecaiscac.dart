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
      if (_pessoas==5){
        _situacao= "Sala Lotada";


      }else if(_pessoas >= 0){
        _situacao = "Há vagas";
      }else{
        _pessoas = 0;
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
              'https://vui.unsplash.com/resize?height=256&quality=60&type=auto&url=https%3A%2F%2Fsearched-images.s3.us-west-2.amazonaws.com%2F8747b6e9-7798-4b18-9745-c4930ac9a297%3FX-Amz-Algorithm%3DAWS4-HMAC-SHA256%26X-Amz-Credential%3DAKIAQ4GRIA4Q6KECABEK%252F20220622%252Fus-west-2%252Fs3%252Faws4_request%26X-Amz-Date%3D20220622T165146Z%26X-Amz-Expires%3D86400%26X-Amz-SignedHeaders%3Dhost%26X-Amz-Signature%3D5dea0f072966b0224e1c4854390d9ba070cb4e4afe0c40f9861ed9f09854f67d&sign=EIaImOX5Uq-3HbMvxeswr0SuiH6K8tIy7rubBZ7yMJk',
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
                  height: 300,
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
                      Text('Lotação Máxima - 6 pessoas',
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
