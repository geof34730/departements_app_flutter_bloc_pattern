import 'dart:convert';

import 'package:flutter/services.dart';

import '../models/DepartementModel.dart';

class DataJson {
  Future<dynamic> loadJsonAsset() async {
    final String jsonString = await rootBundle.loadString('assets/json/departement-region.json');
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


  Future<DepartementModel> nextDepartement(String numDep) async {
    final data = await this.loadJsonAsset();
    for (var i = 0; i < data.length; i++) {
      if(data[i]["num_dep"] == numDep){
        if(i == data.length - 1){
          return DepartementModel.fromJson(data[0]);
        }else{
          return DepartementModel.fromJson(data[i + 1]);
        }
      }
    }
    return DepartementModel(numDep: "", depName: "", regionName: "", description: "");
  }

  Future<DepartementModel> previousDepartement(String numDep) async {
    final data = await this.loadJsonAsset();
    for (var i = 0; i < data.length; i++) {
      if(data[i]["num_dep"] == numDep){
        if(i == 0){
          return DepartementModel.fromJson(data[data.length - 1]);
        }else{
          return DepartementModel.fromJson(data[i - 1]);
        }
      }
    }
    return DepartementModel(numDep: "", depName: "", regionName: "", description: "");
  }
}
//DataJson dataJson = DataJson();
