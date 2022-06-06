import 'package:bikespace/models/locais.class.dart';
import 'package:flutter/material.dart';

class LocaisRepository extends ChangeNotifier {
  final List<Locais> _locais = [
    Locais(
      nome: 'Posto GT - Rede Rodoil',
      endereco: 'R. João Negrão, 1072 - Rebouças - Centro, Curitiba - PR',
      foto:
          'https://lh5.googleusercontent.com/p/AF1QipP_xnSi5-sp9slSuMpSx-JlmvwvHGL1VJ_JcOGX=w408-h306-k-no',
      latitude: -23.5351136,
      longitude: -46.7270552,
    ),
    Locais(
      nome: 'Auto Posto Rodoviária',
      endereco: 'Av. Presidente Affonso Camargo 10 - Rebouças, Curitiba - PR',
      foto:
          'https://lh5.googleusercontent.com/p/AF1QipPnfQSsnvt6-VAxF-fUQ0onQCeRktJptOvSL_9F=w408-h306-k-no',
      latitude: -23.5353029,
      longitude: -46.7260084,
    ),
    Locais(
      nome: 'Auto Posto Nilo Cairo',
      endereco: 'R. Tibagi, 652 - Centro, Curitiba - PR',
      foto:
          'https://lh5.googleusercontent.com/p/AF1QipOB2w7C9Q_NTblNRhcxJtN3-s4_gSjHI1rs5cSM=w408-h544-k-no',
      latitude: -23.536396,
      longitude: -46.7265619,
    ),
  ];

  List<Locais> get locais => _locais;
}
