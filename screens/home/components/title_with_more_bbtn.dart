import 'package:flutter/material.dart';
import '../../../constan  ts.dart';

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    Key key,
    this.title,
    this.press,
  }) : super(key: key);

  final String title;  // Título a ser exibido
  final Function press;  // Função de callback para o botão "More"


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          TitleWithCustomUnderline(text: title),  // Renderiza o título com uma linha personalizada sob ele
          Spacer(),  // Cria um espaço flexível entre o título e o botão "More"
          FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: kPrimaryColor,
            onPressed: press,  // Define uma função de callback para o botão "More"
            child: Text(
              "More",  // Exibe o texto "More" no botão
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    Key key,
    this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,  // Define a altura do container que envolve o título e a linha
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              text,  // Exibe o texto do título
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,  // Alinha a linha à parte inferior do container
            left: 0,  // Alinha a linha à esquerda do container
            right: 0,  // Alinha a linha à direita do container
            child: Container(
              margin: EdgeInsets.only(right: kDefaultPadding / 4),
              height: 7,  // Define a altura da linha sob o título
              color: kPrimaryColor.withOpacity(0.2),  // Define a cor da linha com uma opacidade de 0.2
            ),
          )
        ],
      ),
    );
  }
}
