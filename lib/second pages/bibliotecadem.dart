import 'package:flutter/material.dart';
import 'package:project_place2study/pages/home_page.dart';

class BibliotecaDEM extends StatefulWidget {
  const BibliotecaDEM({Key? key}) : super(key: key);

  @override
  State<BibliotecaDEM> createState() => _BibliotecaDEMState();
}

class _BibliotecaDEMState extends State<BibliotecaDEM> {

  int _pessoas=0;

  String _situacao="Há Vagas";

  void _mudapessoas(int valor){
    setState(() {
      _pessoas+=valor;
      if (_pessoas>40){
        _situacao= "Sala Lotada";
        setState(() {
          _pessoas--;
        });


      }else if(_pessoas >= 0){
        _situacao = "Há Vagas";
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
                  'https://vui.unsplash.com/resize?height=256&quality=60&type=auto&url=https%3A%2F%2Fsearched-images.s3.us-west-2.amazonaws.com%2F687b8bd0-ad04-4a66-8469-167ab0b8f207%3FX-Amz-Algorithm%3DAWS4-HMAC-SHA256%26X-Amz-Credential%3DAKIAQ4GRIA4Q6KECABEK%252F20220625%252Fus-west-2%252Fs3%252Faws4_request%26X-Amz-Date%3D20220625T121314Z%26X-Amz-Expires%3D86400%26X-Amz-SignedHeaders%3Dhost%26X-Amz-Signature%3D94caf62d16d63584daa739a5bca32d1a512b956f1420b527c712cf111a5233bd&sign=vRO_jl0b5nbV9hb8d2GZG1WQkx2DT3cmsGiwfEe1yP0',
                  fit: BoxFit.cover,
                ),
                title: Text('Biblioteca do DEM'),
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
                        Text('Largo Porta Férrea | 3000-447',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            height: 2.5,
                          ),
                        ),
                        Text('239 247 280',
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
                        Text('De Segunda à Sexta :',
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
                        Text('Lotação Máxima - 40 pessoas',
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