import 'dart:convert';

import 'package:flutter/services.dart';

import '../models/DepartementModel.dart';

class DataJson {
  Future<dynamic> loadJsonAsset() async {
    final String jsonString = await rootBundle.loadString('json/departement-region.json');

    final data = jsonDecode(jsonString);
    return data;
  }

  Future<List<DepartementModel>> lisOfDepartement() async {
    final data = await this.loadJsonAsset();
    List<DepartementModel> departements = [];
    for (var item in  data) {
      departements.add(DepartementModel.fromJson(item));
    }
    return departements;
  }

  Future<DepartementModel> getDepartementByNumDep(String numDep) async {
    final data = await this.loadJsonAsset();
    for (var item in  data) {
      if(item["num_dep"] == numDep){
        return DepartementModel.fromJson(item);
      }
    }
    return DepartementModel(numDep: "", depName: "", regionName: "", description: "");
  }
}
