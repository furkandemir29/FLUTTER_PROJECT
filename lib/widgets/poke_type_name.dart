import 'package:flutter/material.dart';
import 'package:flutter_pokedex/constants/constants.dart';
import 'package:flutter_pokedex/model/model.dart';

class PokeNameType extends StatelessWidget {
  final lolHeros lolheros;

  const PokeNameType({Key? key, required this.lolheros}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
         //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  lolheros.heroName ?? '',
                  style: Constants.getPokemonNameTextStyle(),
                ),
              ),
              Text(
                '${lolheros.roleDesc}',
                style: Constants.getPokemonNameTextStyle(),
              ),
            ],
          ),
          SizedBox(height: 10.0,),
      /*    Chip(
              label: Text(
            pokemon.type?.join(' , ') ?? '',
            style: Constants.getTypeChipTextStyle(),
          ))*/
        ],
      ),
    );
  }
}
