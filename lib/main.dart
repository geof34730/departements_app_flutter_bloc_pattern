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
        title: Text(titleApp),
      ),
      body: Column(
          children:[
            SearchDropDown(),
            StreamBuilder(
              stream: blocDepartement.stream.distinct(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text('Erreur: ${snapshot.error}');
                } else if (!snapshot.hasData) {
                  return const Divider();
                } else {
                 if(snapshot.data?.numDep == ""){
                   return const  Divider();
                  }
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Divider(),
                        Text('${snapshot.data?.numDep} - ${snapshot.data?.depName} (région: ${snapshot.data!.regionName})'),
                        Image(image: AssetImage('assets/images/cartes/${snapshot.data?.numDep}.png'), height: 200, width: 200),
                        Text(snapshot.data!.description),
                        TextButton(
                          style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                          ),
                          onPressed: () {
                            print('57');
                            blocDepartement.selectDepartement("57");
                          },
                          child: Text('57'),
                        )
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



