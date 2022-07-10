import 'package:flutter/material.dart';
import 'package:project_place2study/pages/home_page.dart';

class SaladeEstudoDCV extends StatefulWidget {
  const SaladeEstudoDCV ({Key? key}) : super(key: key);

  @override
  State<SaladeEstudoDCV> createState() => _SaladeEstudoDCVState();
}

class _SaladeEstudoDCVState extends State<SaladeEstudoDCV> {

  int _pessoas=0;

  String _situacao="Há Vagas";

  void _mudapessoas(int valor){
    setState(() {
      _pessoas+=valor;
      if (_pessoas>62){
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
                  'https://vui.unsplash.com/resize?height=256&quality=60&type=auto&url=https%3A%2F%2Fsearched-images.s3.us-west-2.amazonaws.com%2Fcb1e542e-6624-453e-a140-6a0a8919e112%3FX-Amz-Algorithm%3DAWS4-HMAC-SHA256%26X-Amz-Credential%3DAKIAQ4GRIA4Q6KECABEK%252F20220710%252Fus-west-2%252Fs3%252Faws4_request%26X-Amz-Date%3D20220710T170858Z%26X-Amz-Expires%3D86400%26X-Amz-SignedHeaders%3Dhost%26X-Amz-Signature%3D12e8385035193664e5bb1e19764a5bf5a87ed05dcdc351eb550a28bef371af97&sign=dtvCgV-eIoRMBpNzEqpEi0MxAJ-pAxtKBAjhxU6diC8',
                  fit: BoxFit.cover,
                ),
                title: Text('Sala de Estudo DCV'),
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
                        Text('CC Martim de Freitas | 3000-456',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            height: 2.5,
                          ),
                        ),
                        Text('239 240 700',
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
                        Text('-> Das 09h à 17h30',
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
                        Text('Lotação Máxima - 62 pessoas',
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