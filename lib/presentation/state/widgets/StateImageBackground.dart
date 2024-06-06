import 'package:flutter/cupertino.dart';
import 'package:mini_nft_marketplace/core/resources/imageManager.dart';

class StateImageBackground extends StatelessWidget {
  const StateImageBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return  Image(
      image: AssetImage(ImageManager.StatePageBackground),
      height: double.infinity,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }
}
