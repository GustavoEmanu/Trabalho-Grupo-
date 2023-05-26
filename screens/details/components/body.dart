import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

import 'image_and_icons.dart';
import 'title_and_price.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(size: size), //Exibe o widget ImageandIcons com o tamanho da tela como paramêtro
          TitleAndPrice(title: "Angelica", country: "Russia", price: 440), //Exibe o widget TitleAndPrice com título, país e preço como paramêtros
          SizedBox(height: kDefaultPadding), //Adiciona um espaço vertical com altura igual a kDefaultPadding
          Row(
            children: <Widget>[
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    ),
                  ),
                  color: kPrimaryColor,
                  onPressed: () {}, //Função a ser executada quando o botão for pressionado
                  child: Text(
                    "Buy Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {}, //Função a ser executada quando o botão for pressionado
                  child: Text("Description"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
