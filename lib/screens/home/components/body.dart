import 'package:flutter/material.dart';
//Uma biblioteca, é utilizada para recursos relacionados a interface do usuário. Estiliza as partes visuais, através de classes e métodos.

import 'package:plant_app/constants.dart';
// Essa importação contêm declarações de valores constantes, como cores, tamanhos de fonte, URLs de API, chaves de acesso, entre outros. 

import 'featurred_plants.dart';
import 'header_with_seachbox.dart';
import 'recomend_plants.dart';
import 'title_with_more_bbtn.dart';

class Body extends StatelessWidget {
//Criamos a classe Body, que é um widget StatelessWidget. O widget Body contém a estrutura principal do corpo do aplicativo.
  
  @override
  Widget build(BuildContext context) {
  //Método build que é obrigatório em um widget, fazemos gerenciamos o widget.

    Size size = MediaQuery.of(context).size;
    //obtém o tamanho da tela atual usando o objeto MediaQuery para usá-lo posteriormente no layout do widget.
    
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>
        //é usado para exibir um texto com formatação diferente, como diferentes estilos e cores.

          HeaderWithSearchBox(size: size),
          // que é um widget personalizado para exibir um cabeçalho com uma caixa de pesquisa. Passamos o tamanho da tela como parâmetro.
          TitleWithMoreBtn(title: "Recomended", press: () {}),
          //que é um widget personalizado para exibir um título com um botão "Mais". Passamos o título e uma função de callback como parâmetros.
          RecomendsPlants(),
          //que é um widget personalizado para exibir plantas recomendadas.
          TitleWithMoreBtn(title: "Featured Plants", press: () {}),
          // que é outro widget personalizado para exibir um título com um botão "Mais".
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding),
          //que cria um espaço vertical com uma altura igual a kDefaultPadding (uma constante definida em constants.dart).
        ],
      ),
    );
  }
}
