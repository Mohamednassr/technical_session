import 'package:flutter/cupertino.dart';

class CartIngrediantRow extends StatelessWidget {
  String ?text;
  String ?price;
    CartIngrediantRow({
    Key? key,
      this.text,this.price
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('$text'),
          Text('$price\$'),

        ],
      ),
    );
  }
}
