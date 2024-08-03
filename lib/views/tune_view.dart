
import 'package:flutter/material.dart';
import 'package:music_notes_player_app_setup/models/tune_model.dart';
import 'package:music_notes_player_app_setup/widgets/tune_item.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});

  final List<TuneModel> tunes = const [
    TuneModel(color: Color(0xffF44336), sound: 'tunes_player_appassetsnote1.wav'),
    TuneModel(color: Color(0xffF89800), sound: 'tunes_player_appassetsnote2.wav'),
    TuneModel(color: Color(0xffFEEB3B), sound: 'tunes_player_appassetsnote3.wav'),
    TuneModel(color: Color(0xff4CAF50), sound: 'tunes_player_appassetsnote4.wav'),
    TuneModel(color: Color(0xff2F9688), sound: 'tunes_player_appassetsnote5.wav'),
    TuneModel(color: Color(0xff2896F3), sound: 'tunes_player_appassetsnote6.wav'),
    TuneModel(color: Color(0xff9C27B0), sound: 'tunes_player_appassetsnote7.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Flutter Tune'),
        backgroundColor: const Color(0xff253238),
        elevation: 0,
      ),
      body: Column(
        children: tunes
            .map(
              (e) => TuneItem(tune: e),
            )
            .toList(),
      ),
    );
  }

  // List<TuneItem> getTuneItems() {
  //   List<TuneItem> items = [];

  //   for (var color in tuneColors) {
  //     items.add(TuneItem(color: color));
  //   }
  //   return items;
  // }
}
