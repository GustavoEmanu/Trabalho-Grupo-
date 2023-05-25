import 'package:flutter/material.dart';
//Uma biblioteca, é utilizada para recursos relacionados a interface do usuário. Estiliza as partes visuais, através de classes e métodos.

import 'package:plant_app/constants.dart';
//Uma biblioteca que fornece recursos para carregar e exibir arquivos SVG(descreve formas etc.)

import 'package:plant_app/screens/home/home_screen.dart';
// Essa importação contêm declarações de valores constantes, como cores, tamanhos de fonte, URLs de API, chaves de acesso, entre outros. 

void main() {
  runApp(MyApp());
}
//Está sendo executado a função runPP(), inicia o aplicativo.

class MyApp extends StatelessWidget {
  //Criamos a classe MyApp que é um widget StatelessWidget.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  //Método build que é obrigatório em um widget, fazemos gerenciamos o widget.

      debugShowCheckedModeBanner: false,
      //é definido como false para ocultar a faixa de depuração no canto superior direito do aplicativo.
      title: 'Plant App',
      //define o título do aplicativo.
      theme: ThemeData(
      //define o tema do aplicativo, incluindo cores e estilos. 
        scaffoldBackgroundColor: kBackgroundColor,
      //define a cor de fundo do aplicativo.
        primaryColor: kPrimaryColor,
      //efine a cor primária do aplicativo, textTheme define o esquema de cores para o texto, visualDensity define a densidade visual do aplicativo.
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
      //define a tela inicial do aplicativo como HomeScreen, que é importada anteriormente.
    );
  }
}
