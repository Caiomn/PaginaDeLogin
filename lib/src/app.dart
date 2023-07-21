import 'package:flutter/material.dart';

class MyAppForm extends StatefulWidget {
  const MyAppForm({Key? key}) : super(key: key);

  @override
  State<MyAppForm> createState() => _MyAppFormState();
}

class _MyAppFormState extends State<MyAppForm> {
  String _usuario = '';
  String _email = '';
  String _senha = '';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[200] ,
          title: Center(child: Text('Login mirandopolis',style: TextStyle(fontFamily:'NerkoOne',fontSize: 30.0, color: Colors.black ),)),
          //leading: Icon(Icons.menu,),
          
        ),
        backgroundColor: Colors.blueGrey[100],
        body: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: 30.0,
            vertical: 30.0,
          ),
          children: <Widget>[
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 90.0,
                    backgroundColor: Colors.transparent,
                    //       backgroundImage: AssetImage('imagem/login.png'),
                  ),
                  Text(
                    'Login',
                    style: TextStyle(fontFamily: 'NerkoOne', fontSize: 50.0),
                  ),
            
                  SizedBox(
                    width: 160.0,
                    height: 15.0,
                    child: Divider(color: Colors.blueGrey),
                  ),
                  TextField(
                    enableSuggestions: false,
                    autocorrect: false,
                    obscureText: false,
                    autofocus: true,
                    decoration: InputDecoration(
                      hintText: 'Nome do usuário',
                      labelText: 'Nome do usuário',
                      suffixIcon: Icon(Icons.verified_user),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    onSubmitted: (valor) {
                      setState(() {
                        _usuario = valor;
                      });
                      print('Olá usuário $_usuario');
                    },
                  ),
                  Divider(
                    height: 18.0,
                  ),
                  TextField(
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      labelText: 'Email',
                      suffixIcon: Icon(Icons.alternate_email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    onSubmitted: (valor) {
                      setState(() {
                        _email = valor;
                      });
                      print('Seu email é $_email');
                    },
                  ),
                  Divider(
                    height: 15.0,
                  ),
                  TextField(
                    enableSuggestions: false,
                    autocorrect: false,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Senha',
                      labelText: 'Senha',
                      suffixIcon: Icon(Icons.lock_outline),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    onSubmitted: (valor) {
                      setState(() {
                        _senha = valor;
                      });
                      print('Sua senha é $_senha');
                    },
                  ),
                  Divider(
                    height: 25.0,
                  ),
                  SizedBox(
                    
                    child: TextButton
                    
                    (onPressed:(){},
                      
                    
                     child: Text('Login',style: TextStyle(color: Colors.green[400], fontSize:27.0 ), ),
                    
                      
                    
                     ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}