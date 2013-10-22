part of youtubeanalytics_v1beta1_api;

/** Contains a single result table. The table is returned as an array of rows that contain the values for the cells of the table. Depending on the metric or dimension, the cell can contain a string (video ID, country code) or a number (number of views or number of likes). */
class ResultTable {

  /** This value specifies information about the data returned in the rows fields. Each item in the columnHeaders list identifies a field returned in the rows value, which contains a list of comma-delimited data. The columnHeaders list will begin with the dimensions specified in the API request, which will be followed by the metrics specified in the API request. The order of both dimensions and metrics will match the ordering in the API request. For example, if the API request contains the parameters dimensions=ageGroup,gender&metrics=viewerPercentage, the API response will return columns in this order: ageGroup,gender,viewerPercentage. */
  core.List<ResultTableColumnHeaders> columnHeaders;

  /** This value specifies the type of data included in the API response. For the query method, the kind property value will be youtubeAnalytics#resultTable. */
  core.String kind;

  /** The list contains all rows of the result table. Each item in the list is an array that contains comma-delimited data corresponding to a single row of data. The order of the comma-delimited data fields will match the order of the columns listed in the columnHeaders field. If no data is available for the given query, the rows element will be omitted from the response. The response for a query with the day dimension will not contain rows for the most recent days. */
  core.List<core.List<core.Object>> rows;

  /** Create new ResultTable from JSON data */
  ResultTable.fromJson(core.Map json) {
    if (json.containsKey("columnHeaders")) {
      columnHeaders = json["columnHeaders"].map((columnHeadersItem) => new ResultTableColumnHeaders.fromJson(columnHeadersItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("rows")) {
      rows = json["rows"].map((rowsItem) => rowsItem.toList()).toList();
    }
  }

  /** Create JSON Object for ResultTable */
  core.Map toJson() {
    var output = new core.Map();

    if (columnHeaders != null) {
      output["columnHeaders"] = columnHeaders.map((columnHeadersItem) => columnHeadersItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (rows != null) {
      output["rows"] = rows.map((rowsItem) => rowsItem.toList()).toList();
    }

    return output;
  }

  /** Return String representation of ResultTable */
  core.String toString() => JSON.encode(this.toJson());

}

class ResultTableColumnHeaders {

  /** The type of the column (DIMENSION or METRIC). */
  core.String columnType;

  /** The type of the data in the column (STRING, INTEGER, FLOAT, etc.). */
  core.String dataType;

  /** The name of the dimension or metric. */
  core.String name;

  /** Create new ResultTableColumnHeaders from JSON data */
  ResultTableColumnHeaders.fromJson(core.Map json) {
    if (json.containsKey("columnType")) {
      columnType = json["columnType"];
    }
    if (json.containsKey("dataType")) {
      dataType = json["dataType"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
  }

  /** Create JSON Object for ResultTableColumnHeaders */
  core.Map toJson() {
    var output = new core.Map();

    if (columnType != null) {
      output["columnType"] = columnType;
    }
    if (dataType != null) {
      output["dataType"] = dataType;
    }
    if (name != null) {
      output["name"] = name;
    }

    return output;
  }

  /** Return String representation of ResultTableColumnHeaders */
  core.String toString() => JSON.encode(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
