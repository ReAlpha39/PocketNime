import 'package:anipocket/models/constant.dart';
import 'package:anipocket/models/tops.dart';
import 'package:flutter/material.dart';
import 'package:anipocket/repositories/jikan_api.dart';

class HomePage extends StatelessWidget {
  final JikanApi jikanApi = JikanApi();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Anipocket"),
      ),
      body: Container(
        child: FutureBuilder(
          future: jikanApi.getTop(TopType.ANIME),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Text("error");
            }
            if (snapshot.hasData) {
              var data = snapshot.data as Tops;
              return Center(
                child: Text(data.top!.length.toString()),
              );
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
