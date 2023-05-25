import 'package:flutter/material.dart';
//Uma biblioteca, é utilizada para recursos relacionados a interface do usuário. Estiliza as partes visuais, através de classes e métodos.

import 'package:flutter_svg/flutter_svg.dart';
//Uma biblioteca que fornece recursos para carregar e exibir arquivos SVG(descreve formas etc.)

import '../constants.dart';
// Essa importação contêm declarações de valores constantes, como cores, tamanhos de fonte, URLs de API, chaves de acesso, entre outros. 

class MyBottomNavBar extends StatelessWidget {
  //Criamos uma classe que faz uma extensão que indica um widget.

  const MyBottomNavBar({
    Key key,
  }) : super(key: key);
  //Construtor da classe A chamada super(key: key) chama o construtor da classe pai StatelessWidget.

  @override
  Widget build(BuildContext context) {
    return Container(
  //Método build que é obrigatório em um widget, fazemos gerenciamos o widget.

      padding: EdgeInsets.only(
        left: kDefaultPadding * 2,
        right: kDefaultPadding * 2,
        bottom: kDefaultPadding,
      ),
      //Essa propriedade, está adicionando espaçamento em todas as dimensões da barra de navegação usando um valor kDefaultPadding.

      height: 80,
      //Esse comando utilizamos para definir a altura da barra de navegação.

      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.38),
          ),
        ],
      ),
      //Aplicamos uma decoração visual ao Container. Definimos uma cor de fundo branca e um efeito de sombra usando um BoxShadow. O kPrimaryColor provavelmente é uma constante definida no arquivo constants.dart.

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: SvgPicture.asset("assets/icons/flower.svg"),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset("assets/icons/heart-icon.svg"),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset("assets/icons/user-icon.svg"),
            onPressed: () {},
          ),
        ],
      ),
      //O child do Container é um Row que contém uma linha de ícones de botão. Usamos IconButton para cada ícone, especificando o ícone SVG a ser exibido usando SvgPicture.asset. Os ícones não têm ação atribuí

    );
  }
}
