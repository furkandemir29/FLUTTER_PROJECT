import 'package:flutter/material.dart';
import 'package:flutter_pokedex/constants/constants.dart';
import 'package:flutter_pokedex/model/model.dart';

class PokeInformation extends StatelessWidget {
  final lolHeros lolheros;

  const PokeInformation({Key? key, required this.lolheros}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          color: Colors.white),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildInformationRow('Name', lolheros.heroName),
              _buildInformationRow('Desc', lolheros.desc),
              _buildInformationRow('Passive', lolheros.passive),
              _buildInformationRow('Q', lolheros.q),
              _buildInformationRow('W', lolheros.w),
              _buildInformationRow('E', lolheros.e),
              _buildInformationRow('R', lolheros.r),
            ],
          ),
        ),
      ),
    );
  }

  _buildInformationRow(String label, dynamic value) {
    return Padding(
      padding: const EdgeInsets.only(right: 12,left: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(label, style: Constants.getPokeInfoLabelTextStyle()),
          ),
          if (value is List && value.isNotEmpty)
            Text(

              value.join(' , '),
              style: Constants.getPokeInfoTextStyle(),
              overflow: TextOverflow.clip,
            )
          else
            if (value == null)
              Text('Not available', style: Constants.getPokeInfoTextStyle(),)
            else
              Text(value, style: Constants.getPokeInfoTextStyle(),)
        ],
      ),
    );
  }
}
