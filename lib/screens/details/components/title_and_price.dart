import 'package:flutter/material.dart';
//Uma biblioteca, é utilizada para recursos relacionados a interface do usuário. Estiliza as partes visuais, através de classes e métodos.

import '../../../constants.dart';
// Essa importação contêm declarações de valores constantes, como cores, tamanhos de fonte, URLs de API, chaves de acesso, entre outros. 

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    Key key,
    this.title,
    this.country,
    this.price,
  }) : super(key: key);

  final String title, country;
  final int price;
  //Criamos uma classe TitleAndPrice, que é um widget StatelessWidget. O widget possui um construtor chamado TitleAndPrice, que recebe três parâmetros opcionais: title, country e price. A anotação @required indica que esses parâmetros são obrigatórios. O construtor também chama o construtor da classe pai usando super(key: key).

  @override
  Widget build(BuildContext context) {
    return Padding(
  //Método build que é obrigatório em um widget, fazemos gerenciamos o widget.

      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      //é usado para adicionar um preenchimento horizontal ao conteúdo.
      child: Row(
      //é usado para posicionar os widgets em uma linha horizontal.
        children: <Widget>[
          RichText(
          //é usado para exibir um texto com formatação diferente, como diferentes estilos e cores.
            text: TextSpan(
              children: [
                TextSpan(
                //para o título, definido como "$title\n", com estilo de textTheme.headline4 e cor kTextColor.
                  text: "$title\n",
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      .copyWith(color: kTextColor, fontWeight: FontWeight.bold),
                ),
                TextSpan(
                //para o país, definido como country, com estilo personalizado de tamanho, cor e peso da fonte.
                  text: country,
                  style: TextStyle(
                    fontSize: 20,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          //é usado para preencher o espaço restante entre os widgets.

          Text(
          //é usado para exibir o preço, definido como "\$$price", com estilo personalizado de tamanho e cor da fonte.
            "\$$price",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(color: kPrimaryColor),
          )
        ],
      ),
    );
  }
}
