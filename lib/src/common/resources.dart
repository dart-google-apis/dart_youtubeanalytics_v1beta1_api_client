part of youtubeanalytics_v1beta1_api_client;

class ReportsResource extends Resource {

  ReportsResource(Client client) : super(client) {
  }

  /**
   * Retrieve your YouTube Analytics reports.
   *
   * [ids] - Unique channel or content owner ID for retrieving YouTube Analytics data. Either channel==C or contentOwner==O where 'C' is the encrypted channel ID and 'O' is the content owner name.
   *
   * [start_date] - Start date for fetching YouTube Analytics data. All requests should specify a start date formatted as YYYY-MM-DD.
   *
   * [end_date] - End date for fetching YouTube Analytics data. All requests should specify an end date formatted as YYYY-MM-DD.
   *
   * [metrics] - A comma-separated list of YouTube Analytics metrics. E.g., 'views' or 'likes,dislikes'
   *
   * [dimensions] - A comma-separated list of YouTube Analytics dimensions. E.g., 'video', or 'ageGroup,gender'.
   *
   * [filters] - A list of dimension filters to be applied to YouTube Analytics data. Multiple filters can be joined together with the ';' character. The returned result table will satisfy both filters. E.g., video==dMH0bHeiRNg;country==IT will restrict the returned stats to the given video and the country Italy.
   *
   * [max_results] - The maximum number of rows to include in the response.
   *   Minimum: 1
   *
   * [sort] - A comma-separated list of dimensions or metrics that determine the sort order for YouTube Analytics data. By default the sort order is ascending, '-' prefix causes descending sort order.
   *
   * [start_index] - An index of the first entity to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter (one-based, inclusive).
   *   Minimum: 1
   *
   * [optParams] - Additional query parameters
   */
  Future<ResultTable> query(String ids, String start_date, String end_date, String metrics, {String dimensions, String filters, int max_results, String sort, int start_index, Map optParams}) {
    var completer = new Completer();
    var url = "reports";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (dimensions != null) queryParams["dimensions"] = dimensions;
    if (end_date == null) paramErrors.add("end_date is required");
    if (end_date != null) queryParams["end-date"] = end_date;
    if (filters != null) queryParams["filters"] = filters;
    if (ids == null) paramErrors.add("ids is required");
    if (ids != null) queryParams["ids"] = ids;
    if (max_results != null) queryParams["max-results"] = max_results;
    if (metrics == null) paramErrors.add("metrics is required");
    if (metrics != null) queryParams["metrics"] = metrics;
    if (sort != null) queryParams["sort"] = sort;
    if (start_date == null) paramErrors.add("start_date is required");
    if (start_date != null) queryParams["start-date"] = start_date;
    if (start_index != null) queryParams["start-index"] = start_index;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new ResultTable.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

