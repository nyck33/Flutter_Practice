/*So now you have:

    A class that holds the state for the counter(CounterState).
    A class that can manipulate that state and make notifications about updates(CounterNotifier).
    A StateNotifierProvider(counterProvider) to consume/use in a Widget.
*/
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import './views/weather_search_page.dart';

void main() => runApp(ProviderScope(child: MyApp()));

class MyApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Weather Freezed Riverpod',
      home: WeatherSearchPage(),
    );
  }
}
