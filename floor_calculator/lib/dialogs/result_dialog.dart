import 'package:floor_calculator/models/result_model.dart';
import 'package:flutter/material.dart';

class ResultDialog extends StatelessWidget {
  final ResultModel result;

  const ResultDialog(this.result);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Resultado'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            title: Text('${result.amountPieces} pisos'),
            subtitle: Text('Quantidade de pisos'),
          ),
          ListTile(
            title: Text('${result.amountFloor} pisos'),
            subtitle: Text('Quantidade de pisos para o rodapé'),
          ),
          ListTile(
            title: Text('${result.amountPiecesAndFooter} pisos'),
            subtitle: Text('Total de pisos'),
          ),
          ListTile(
            title: Text('${result.areaWithFooter} m2'),
            subtitle: Text('Metragem quadrada com rodapé'),
          )
        ],
      ),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('CONTINUAR'))
      ],
    );
  }
}
