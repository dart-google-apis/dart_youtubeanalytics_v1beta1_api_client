library hop_runner;

import 'package:hop/hop.dart';
import 'package:hop/hop_tasks.dart';

void main() {

  List pathList = [
    'lib/youtubeanalytics_v1beta1_api_browser.dart',
    'lib/youtubeanalytics_v1beta1_api_console.dart',
    'lib/youtubeanalytics_v1beta1_api_client.dart'
  ];

  addTask('docs', createDartDocTask(pathList, linkApi: true));

  addTask('analyze', createAnalyzerTask(pathList));

  runHop();
}
