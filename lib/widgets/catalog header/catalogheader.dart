import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

class headerfiles extends StatelessWidget {
  const headerfiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Wardrobe ".text.xl5.bold.make(),
        SizedBox(
          height: 1,
        ),
        "Trending Picks".text.bold.lg.make(),
        
      ],
    );
  }
}