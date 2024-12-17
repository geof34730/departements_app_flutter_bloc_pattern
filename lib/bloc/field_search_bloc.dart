import 'dart:async';
import 'dart:convert';

import 'package:departement_francais/models/DepartementModel.dart';

import '../services/DataJson.dart';
import 'bloc.dart';
final blocDepartement = FieldSearchBloc();
class FieldSearchBloc extends Bloc {
  //valeur par default du counter
  String search ="";

  //creation du stream controller
  final StreamController<DepartementModel> _streamController = StreamController<DepartementModel>();

  //Entrée
  //envoyer une valeur au stream controller
  Sink<DepartementModel> get sink => _streamController.sink;

  //sortie
  //récupérer la valeur du stream controller
  Stream<DepartementModel> get stream => _streamController.stream;

  selectDepartement(String value) async{
      search = value;
      DepartementModel departement = await DataJson().getDepartementByNumDep(value);
      sink.add(departement);
  }

  @override
  dispose() {
    //ferme le stream
    _streamController.close();
  }

}
