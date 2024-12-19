import 'package:departement_francais/models/DepartementModel.dart';
import 'package:departement_francais/services/DataJson.dart';
import 'package:departement_francais/utils/theme.dart';
import 'package:departement_francais/ui/widgets/searchDropDown.dart';
import 'package:flutter/material.dart';

import 'bloc/field_search_bloc.dart';
import 'global.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: getThemeData(),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            titleApp,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold
            )
        ),
        leading: const Image(
            image: AssetImage('assets/images/drapeau.jpg'),
            height: 30,
            width: 30,

        ),
      ),
      body: Column(

          children:[
            const SearchDropDown(),
            StreamBuilder(
              stream: blocDepartement.stream.distinct(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  print('*********** waiting');
                  return const CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  print('*********** Erreur');
                  return Text('Erreur: ${snapshot.error}');
                } else if (!snapshot.hasData) {
                  print('*********** Pas de data');
                  return const Divider();
                } else {
                  print('*********** data');

                 if(snapshot.data?.numDep == ""){
                   return const  Divider();
                  }
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Divider(),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                             Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.navigate_before),
                                  color: Colors.black,
                                  onPressed: () {
                                    DataJson().previousDepartement(snapshot.data!.numDep).then((onValue) => blocDepartement.selectDepartement(onValue.numDep));
                                  },
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                    '${snapshot.data?.numDep} - ${snapshot.data?.depName}',
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold
                                    )
                                ),
                                Text('(Région: ${snapshot.data!.regionName})'),
                                Image(image: AssetImage('assets/images/cartes/${snapshot.data?.numDep}.png'), height: 200, width: 200),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.navigate_next),
                                  color: Colors.black,
                                  onPressed: () {
                                    DataJson().nextDepartement(snapshot.data!.numDep).then((onValue) => blocDepartement.selectDepartement(onValue.numDep));
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(padding: const EdgeInsets.all(15),
                          child: Text(
                              snapshot.data!.description,
                              textAlign: TextAlign.justify,
                              style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal
                              )
                          ),
                        ),
                      ],
                    ),
                  );
                }
              },
            )
      ])
    );
  }
}



