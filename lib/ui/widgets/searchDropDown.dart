import 'package:departement_francais/models/DepartementModel.dart';
import 'package:flutter/material.dart';
import '../../bloc/field_search_bloc.dart';
import '../../services/DataJson.dart';

class SearchDropDown extends StatefulWidget {
  const SearchDropDown({super.key});
  @override
  State<SearchDropDown> createState() => _SearchDropDownState();
}
final  dataJsonObject =  DataJson();

class _SearchDropDownState extends State<SearchDropDown> {
  String selectedValue = "";
  late Future<List<List<DropdownMenuItem<String>>>>? dataDropDown;

  @override
  void initState() {
    super.initState();
    dataDropDown = fetchDropdownItems();
    blocDepartement.selectDepartement(selectedValue);
  }

  Future<List<List<DropdownMenuItem<String>>>> fetchDropdownItems() async {
    List<DepartementModel> departments = await dataJsonObject.lisOfDepartement();
    List<List<DropdownMenuItem<String>>> items = [];
    items.add(departments
        .map((e) => DropdownMenuItem(child: Text(e.numDep), value: e.numDep))
        .toList()
      ..sort((a, b) => a.value!.compareTo(b.value!)));
    items.add(departments
        .map((e) => DropdownMenuItem(child: Text(e.depName), value: e.numDep))
        .toList()
      ..sort((a, b) => a.child.toString().compareTo(b.child.toString())));
    items[0].insert(0, DropdownMenuItem(child: Text("Numéros"), value: ""));
    items[1].insert(0, DropdownMenuItem(child: Text("Nom"), value: ""));
    return items;
  }


  Widget build(BuildContext context) {
    return FutureBuilder<List<List<DropdownMenuItem<String>>>>(
      future: dataDropDown,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          print(" ConnectionState.waiting");
          return const CircularProgressIndicator();
        } else if (snapshot.hasError) {
          print(" ConnectionState.hasError");
          return Text('Erreur: ${snapshot.error} ');
        } else if (!snapshot.hasData || snapshot.data!.isEmpty || snapshot.data == null) {
          print(" ConnectionState.hasData: ${snapshot.hasData}");
          //return const Text('Aucun élément trouvé');
          return const CircularProgressIndicator();
        } else {
          print(snapshot.data);
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DropdownButton<String>(
                    value: selectedValue,
                    items: snapshot.data?[0],
                    onChanged: (String? value) {
                      setState(() {
                        selectedValue = value!;
                        blocDepartement.selectDepartement(value);
                      });
                    },
                  ),
                  DropdownButton<String>(
                    value: selectedValue,
                    items: snapshot.data?[1],
                    onChanged: (String? value) {
                      setState(() {
                        selectedValue = value!;
                        blocDepartement.selectDepartement(value);
                      });
                    },
                  )
                ],
              ),
            ],
          );
        }
      },
    );
  }
}