part of youtubeanalytics_v1beta1_api_client;

/** Contains a single result table. The table is returned as an array of rows that contain the values for the cells of the table. Depending on the metric or dimension, the cell can contain a string (video ID, country code) or a number (number of views or number of likes). */
class ResultTable {

  /** This value specifies information about the data returned in the rows fields. Each item in the columnHeaders list identifies a field returned in the rows value, which contains a list of comma-delimited data. The columnHeaders list will begin with the dimensions specified in the API request, which will be followed by the metrics specified in the API request. The order of both dimensions and metrics will match the ordering in the API request. For example, if the API request contains the parameters dimensions=ageGroup,gender&metrics=viewerPercentage, the API response will return columns in this order: ageGroup,gender,viewerPercentage. */
  core.List<ResultTableColumnHeaders> columnHeaders;

  /** This value specifies the type of data included in the API response. For the query method, the kind property value will be youtubeAnalytics#resultTable. */
  core.String kind;

  /** Create new ResultTable from JSON data */
  ResultTable.fromJson(core.Map json) {
    if (json.containsKey("columnHeaders")) {
      columnHeaders = [];
      json["columnHeaders"].forEach((item) {
        columnHeaders.add(new ResultTableColumnHeaders.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for ResultTable */
  core.Map toJson() {
    var output = new core.Map();

    if (columnHeaders != null) {
      output["columnHeaders"] = new core.List();
      columnHeaders.forEach((item) {
        output["columnHeaders"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of ResultTable */
  core.String toString() => JSON.stringify(this.toJson());

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
  core.String toString() => JSON.stringify(this.toJson());

}

