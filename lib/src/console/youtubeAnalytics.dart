part of youtubeanalytics_v1beta1_api_console;

/** Client to access the youtubeAnalytics v1beta1 API */
/** Retrieve your YouTube Analytics reports. */
class YoutubeAnalytics extends ConsoleClient {

  ReportsResource _reports;
  ReportsResource get reports => _reports;

  /** OAuth Scope2: View YouTube Analytics monetary reports for your YouTube content */
  static const String YT_ANALYTICS_MONETARY_READONLY_SCOPE = "https://www.googleapis.com/auth/yt-analytics-monetary.readonly";

  /** OAuth Scope2: View YouTube Analytics reports for your YouTube content */
  static const String YT_ANALYTICS_READONLY_SCOPE = "https://www.googleapis.com/auth/yt-analytics.readonly";

  /**
   * Data format for the response.
   * Added as queryParameter for each request.
   */
  String get alt => params["alt"];
  set alt(String value) => params["alt"] = value;

  /**
   * Selector specifying which fields to include in a partial response.
   * Added as queryParameter for each request.
   */
  String get fields => params["fields"];
  set fields(String value) => params["fields"] = value;

  /**
   * API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
   * Added as queryParameter for each request.
   */
  String get key => params["key"];
  set key(String value) => params["key"] = value;

  /**
   * OAuth 2.0 token for the current user.
   * Added as queryParameter for each request.
   */
  String get oauth_token => params["oauth_token"];
  set oauth_token(String value) => params["oauth_token"] = value;

  /**
   * Returns response with indentations and line breaks.
   * Added as queryParameter for each request.
   */
  bool get prettyPrint => params["prettyPrint"];
  set prettyPrint(bool value) => params["prettyPrint"] = value;

  /**
   * Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
   * Added as queryParameter for each request.
   */
  String get quotaUser => params["quotaUser"];
  set quotaUser(String value) => params["quotaUser"] = value;

  /**
   * IP address of the site where the request originates. Use this if you want to enforce per-user limits.
   * Added as queryParameter for each request.
   */
  String get userIp => params["userIp"];
  set userIp(String value) => params["userIp"] = value;

  YoutubeAnalytics([Object auth]) : super(auth) {
    basePath = "/youtube/analytics/v1beta1/";
    rootUrl = "https://www.googleapis.com:443/";
    _reports = new ReportsResource(this);
  }
}
