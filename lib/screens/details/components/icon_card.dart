import 'package:flutter/material.dart';
//Uma biblioteca, é utilizada para recursos relacionados a interface do usuário. Estiliza as partes visuais, através de classes e métodos.

import 'package:flutter_svg/flutter_svg.dart';
//Uma biblioteca que fornece recursos para carregar e exibir arquivos SVG(descreve formas etc.)

import '../../../constants.dart';
// Essa importação contêm declarações de valores constantes, como cores, tamanhos de fonte, URLs de API, chaves de acesso, entre outros. 

class IconCard extends StatelessWidget {
  const IconCard({
    Key key,
    this.icon,
  }) : super(key: key);

  final String icon;
//Definimos a classe IconCard, que é um widget StatelessWidget. O widget possui um construtor chamado IconCard, que recebe um parâmetro opcional icon do tipo String. A anotação @required indica que esse parâmetro é obrigatório. O construtor também chama o construtor da classe pai usando super(key: key).
  
  @override
  Widget build(BuildContext context) {
  //Método build que é obrigatório em um widget, fazemos gerenciamos o widget.

    Size size = MediaQuery.of(context).size;
    //obtém o tamanho da tela atual usando o objeto MediaQuery para usá-lo posteriormente no layout do widget.
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      //define uma margem vertical com base na altura da tela.
      padding: EdgeInsets.all(kDefaultPadding / 2),
      //define um preenchimento interno usando metade do valor kDefaultPadding.
      height: 62,
      //definem a altura e largura fixas do cartão como 62 pixels.
      width: 62,
      decoration: BoxDecoration(
        //define a decoração visual do cartão, incluindo cor de fundo, bordas arredondadas e sombras.
        color: kBackgroundColor,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 15),
            blurRadius: 22,
            color: kPrimaryColor.withOpacity(0.22),
          ),
          BoxShadow(
            offset: Offset(-15, -15),
            blurRadius: 20,
            color: Colors.white,
          ),
        ],
      ),
      child: SvgPicture.asset(icon),
      //exibe o ícone SVG usando o caminho do arquivo SVG fornecido pelo parâmetro icon.
    );
  }
}
