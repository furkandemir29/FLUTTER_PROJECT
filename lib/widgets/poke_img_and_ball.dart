import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:flutter_pokedex/model/model.dart';

class PokeImageAndBall extends StatelessWidget {
  final lolHeros lolheros;

  const PokeImageAndBall({Key? key, required this.lolheros}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String pokeballImageUrl = 'images/l1.png';

    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomLeft,
          child: Image.asset(
            pokeballImageUrl,
            width: 40,
            height: 40,
            fit: BoxFit.fitHeight,
          ),
        ),
        Align(
            alignment: Alignment.bottomRight,
            child: Hero(
              tag: lolheros.heroName!,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: CachedNetworkImage(
                  imageUrl: lolheros.picture ?? '',
                  errorWidget: (context, ur, error) => Icon(Icons.ac_unit),
                  fit: BoxFit.fitHeight,
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(
                    color: Colors.red,
                  ),
                ),
              ),
            ))
      ],
    );
  }
}
