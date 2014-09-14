library youtubeanalytics_v1beta1_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_youtubeanalytics_v1beta1_api/src/console_client.dart';

import "package:google_youtubeanalytics_v1beta1_api/youtubeanalytics_v1beta1_api_client.dart";

/** Retrieve your YouTube Analytics reports. */
@deprecated
class YoutubeAnalytics extends Client with ConsoleClient {

  /** OAuth Scope2: View YouTube Analytics monetary reports for your YouTube content */
  static const String YT_ANALYTICS_MONETARY_READONLY_SCOPE = "https://www.googleapis.com/auth/yt-analytics-monetary.readonly";

  /** OAuth Scope2: View YouTube Analytics reports for your YouTube content */
  static const String YT_ANALYTICS_READONLY_SCOPE = "https://www.googleapis.com/auth/yt-analytics.readonly";

  final oauth2.OAuth2Console auth;

  YoutubeAnalytics([oauth2.OAuth2Console this.auth]);
}
