import 'package:flutter/material.dart';
import 'package:flutter_pokedex/constants/constants.dart';
import 'package:flutter_pokedex/constants/ui_helper.dart';
import 'package:flutter_pokedex/model/model.dart';
import 'package:flutter_pokedex/pages/detail_page.dart';
import 'package:flutter_pokedex/widgets/poke_img_and_ball.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PokeListItem extends StatelessWidget {
  final lolHeros lolheros;

  const PokeListItem({Key? key, required this.lolheros}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DetailPage(lolheros: lolheros),
        ));
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 3,
        shadowColor: Colors.white,
        color: UIHelper.getColorFromType(lolheros.role!),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                lolheros.roleDesc ?? 'N/A',
                style: Constants.getPokemonNameTextStyle(),
              ),
              Chip(
                  label: Text(
                lolheros.heroName!,
                style: Constants.getTypeChipTextStyle(),
              )),
              Expanded(child: PokeImageAndBall(lolheros: lolheros)),
            ],
          ),
        ),
      ),
    );
  }
}
