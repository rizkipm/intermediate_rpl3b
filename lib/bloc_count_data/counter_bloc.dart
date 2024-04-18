import 'dart:async';

import 'package:intermediate_rpl3b/bloc_count_data/counter_provider.dart';

class CounterBloc{

  final counterController = StreamController();//proses membuat stream countroller
  final CounterProvider provider = CounterProvider(); //proses membuat instance class dari counter provider

  Stream get getCount => counterController.stream; //membuat stream

  void updateCount(){
    provider.increaseCount(); //kita method dari provider increasecount
    counterController.sink.add(provider.count);//proses input atau add
  }

  void dispose(){
    counterController.close();//untuk close stream controller
  }

}

final bloc = CounterBloc();//instance biar public

