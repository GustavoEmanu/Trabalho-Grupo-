import 'package:flutter/material.dart';
import 'package:plant_app/screens/details/details_screen.dart';

import '../../../constants.dart';

class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,  // Habilita a rolagem horizontal para exibir os cartões de plantas recomendadas
      child: Row(
        children: <Widget>[
          RecomendPlantCard(
            image: "assets/images/image_1.png",  // Define a imagem para o primeiro cartão de planta recomendada
            title: "Samantha",  // Define o título do primeiro cartão de planta recomendada
            country: "Russia",  // Define o país do primeiro cartão de planta recomendada
            price: 440,  // Define o preço do primeiro cartão de planta recomendada
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),  // Navega para a tela de detalhes quando o cartão for pressionado
                ),
              );
            },
          ),
          RecomendPlantCard(
            image: "assets/images/image_2.png",  // Define a imagem para o segundo cartão de planta recomendada
            title: "Angelica",  // Define o título do segundo cartão de planta recomendada
            country: "Russia",  // Define o país do segundo cartão de planta recomendada
            price: 440,  // Define o preço do segundo cartão de planta recomendada
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),  // Navega para a tela de detalhes quando o cartão for pressionado
                ),
              );
            },
          ),
          RecomendPlantCard(
            image: "assets/images/image_3.png",  // Define a imagem para o terceiro cartão de planta recomendada
            title: "Samantha",  // Define o título do terceiro cartão de planta recomendada
            country: "Russia",  // Define o país do terceiro cartão de planta recomendada
            price: 440,  // Define o preço do terceiro cartão de planta recomendada
            press: () {},  // Define a função de callback vazia para quando o cartão for pressionado
          ),
        ],
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard({
    Key key,
    this.image,
    this.title,
    this.country,
    this.price,
    this.press,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;  // Obtém o tamanho da tela

    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,  // Define a margem esquerda do cartão
        top: kDefaultPadding / 2,  // Define a margem superior do cartão
        bottom: kDefaultPadding * 2.5,  // Define a margem inferior do cartão
      ),
      width: size.width * 0.4,  // Define a largura do cartão como 40% da largura da tela
      child: Column(
        children: <Widget>[
          Image.asset(image),  // Exibe a imagem do cartão
          GestureDetector(
            onTap: press,  // Define a função de callback para quando o cartão for pressionado
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),  // Define o preenchimento interno do container
              decoration: BoxDecoration(
                color: Colors.white,  // Define a cor de fundo do container
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),  // Define o raio de borda inferior esquerdo do container
                  bottomRight: Radius.circular(10),  // Define o raio de borda inferior direito do container
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),  // Define o deslocamento da sombra
                    blurRadius: 50,  // Define o desfoque da sombra
                    color: kPrimaryColor.withOpacity(0.23),  // Define a cor e a opacidade da sombra
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "$title\n".toUpperCase(),  // Define o texto do título com quebra de linha e letras maiúsculas
                            style: Theme.of(context).textTheme.button),  // Aplica o estilo de texto do tema ao título
                        TextSpan(
                          text: "$country".toUpperCase(),  // Define o texto do país em letras maiúsculas
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),  // Define a cor e a opacidade do texto do país
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$$price',  // Exibe o preço no formato "$price"
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: kPrimaryColor),  // Aplica o estilo de texto do tema ao preço
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
