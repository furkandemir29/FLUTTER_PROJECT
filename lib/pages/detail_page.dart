import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pokedex/constants/ui_helper.dart';

import 'package:flutter_pokedex/widgets/poke_information.dart';
import 'package:flutter_pokedex/widgets/poke_type_name.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../model/model.dart';


class DetailPage extends StatelessWidget {
  final lolHeros lolheros;

  const DetailPage({Key? key, required this.lolheros}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String pokeballImageUrl = 'images/pokeball.png';
    return ScreenUtil().orientation == Orientation.portrait
        ? _buildPortraitBody(context)
        : _buildLandscapeBody(context);
  }

  Scaffold _buildLandscapeBody(BuildContext context) {
    return Scaffold(
      backgroundColor: UIHelper.getColorFromType(lolheros.role!),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  iconSize: 18,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.arrow_back_ios)),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        PokeNameType(lolheros: lolheros),
                        Expanded(
                          child: Hero(
                            tag: lolheros.heroName!,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: CachedNetworkImage(
                                imageUrl: lolheros.picture ?? '',
                                height: 150,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: PokeInformation(lolheros: lolheros),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Scaffold _buildPortraitBody(BuildContext context) {
    return Scaffold(
      backgroundColor: UIHelper.getColorFromType(lolheros.role!),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  iconSize: 18,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.arrow_back_ios)),
            ),
            PokeNameType(lolheros: lolheros),

            Align(
              alignment: Alignment.topCenter,
              child: Hero(
                tag: lolheros.heroName!,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: CachedNetworkImage(
                    imageUrl: lolheros.picture ?? '',
                    height: 150,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
            Expanded(
                child: Stack(
                  children: [

                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      top: 30,
                      child: PokeInformation(lolheros: lolheros),
                    ),

                  ],
                )),
          ],
        ),
      ),
    );
  }
}



