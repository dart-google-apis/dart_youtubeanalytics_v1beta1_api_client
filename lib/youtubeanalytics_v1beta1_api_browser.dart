library youtubeanalytics_v1beta1_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_youtubeanalytics_v1beta1_api/src/browser_client.dart';
import "package:google_youtubeanalytics_v1beta1_api/youtubeanalytics_v1beta1_api_client.dart";

/** Retrieve your YouTube Analytics reports. */
class YoutubeAnalytics extends Client with BrowserClient {

  /** OAuth Scope2: View YouTube Analytics monetary reports for your YouTube content */
  static const String YT_ANALYTICS_MONETARY_READONLY_SCOPE = "https://www.googleapis.com/auth/yt-analytics-monetary.readonly";

  /** OAuth Scope2: View YouTube Analytics reports for your YouTube content */
  static const String YT_ANALYTICS_READONLY_SCOPE = "https://www.googleapis.com/auth/yt-analytics.readonly";

  final oauth.OAuth2 auth;

  YoutubeAnalytics([oauth.OAuth2 this.auth]);
}
