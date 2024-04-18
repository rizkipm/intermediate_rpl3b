import 'package:flutter/material.dart';
import 'package:intermediate_rpl3b/bloc_count_data/counter_bloc.dart';
import 'package:intermediate_rpl3b/bloc_count_data/counter_provider.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bloc Pattern Counter Demo'),
        backgroundColor: Colors.purple,
      ),

      body: StreamBuilder(
        stream: bloc.getCount,
        initialData: CounterProvider().count,
        builder: (context, snapshot) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('You have pushed the button this many times'),
              Text('${snapshot.data}', style: Theme.of(context).textTheme.displayMedium,)
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: bloc.updateCount,
        tooltip: 'Increment',
        child: Icon(Icons.add, color: Colors.white,),
      ),
    );
  }
}
