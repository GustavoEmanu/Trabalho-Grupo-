import 'package:flutter/material.dart';

import '../../../constants.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,//Habilita a rolagem horizontal para exibir os cartôes de plantas em destaque
      child: Row(
        children: <Widget>[
          FeaturePlantCard(
            image: "assets/images/bottom_img_1.png",//Define a imagem para o primeiro cartão de planta em destaque
            press: () {}, //Define a função de callback vazia para quando o cartão for pressionado
          ),
          FeaturePlantCard(
            image: "assets/images/bottom_img_2.png",//Define a imagem para o segundo cartão de planta em destaque
            press: () {},//Define a função de callback vazia para quando o cartão for pressionado
          ),
        ],
      ),
    );
  }
}

class FeaturePlantCard extends StatelessWidget {
  const FeaturePlantCard({
    Key key,
    this.image,
    this.press,
  }) : super(key: key);
  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //Obtém o tamanho da tela
    return GestureDetector(
      onTap: press, //Define a função de callback para quando o botão for pressionado
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding, //Define a margem esquerda do cartão
          top: kDefaultPadding / 2,//Define a margem superior do cartão
          bottom: kDefaultPadding / 2,//Define a margem inferior do cartão
        ),
        width: size.width * 0.8,//Define a largura do cartão como 80% da largura da tela
        height: 185,//Define a altura fixa do cartão
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),//Define o raio da borda do cartão
          image: DecorationImage(
            fit: BoxFit.cover,//Ajusta a imagem para preencher o cartão mantendo na proporção
            image: AssetImage(image),//Define a imagem do cartão como imagem fornecida
          ),
        ),
      ),
    );
  }
}
