import 'package:flutter/material.dart';
import 'package:flutter_pokedex/widgets/app_title.dart';

import 'package:flutter_pokedex/widgets/pokemon_list_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) => Column(
          children: [

            Expanded(child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  top: 20,
                  child: AppTitle(),
                ),
                Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    top: 110,

                    child: PokemonList()),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
