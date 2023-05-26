import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/components/my_bottom_nav_bar.dart';
import 'package:plant_app/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(), //Constrói a barra de aplicativo
      body: Body(),//Renderiza o corpo da tela inicial
      bottomNavigationBar: MyBottomNavBar(),//Renderiza a barra de navegação inferior personalizada
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0, //Remove a sombra da sombra de barra de aplicativo
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"), //Exibe um ícone de menu na posição de liderança (esquerda)
        onPressed: () {}, //Define uma função de callback vazia para o botão de menu
      ),
    );
  }
}
