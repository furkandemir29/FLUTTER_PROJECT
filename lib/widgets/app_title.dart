import 'package:flutter/material.dart';
import '../constants/constants.dart';

class AppTitle extends StatefulWidget {
   AppTitle({Key? key}) : super(key: key);

  @override
  _AppTitleState createState() => _AppTitleState();
}

class _AppTitleState extends State<AppTitle> {
  String pokeballImageUrl = 'images/lol.png';

  @override
  Widget build(BuildContext context) {
    return Container(
      //  color: Colors.red,
    //  height: UIHelper.getAppTitleWidgetHeight(),
      child: Stack(
        children: [
           Padding(
             padding: const EdgeInsets.all(15.0),
             child: Align(
                alignment: Alignment.topRight,
                child: Text(Constants.title, style: Constants.getTitleTextStyle())
          ),
           ),
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              pokeballImageUrl,
              width: 300,
              height: 150,
              fit: BoxFit.fitWidth,
            ),
          )
        ],
      ),
    );
  }
}
