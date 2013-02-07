part of youtubeanalytics_v1beta1_api_client;

/** Contains a single result table. The table is returned as an array of rows that contain the values for the cells of the table. Depending on the metric or dimension, the cell can contain a string (video ID, country code) or a number (number of views or number of likes). */
class ResultTable {

  /** Contains information about the columns returned in the "rows" fields. The order of the elements matches the order of the corresponding columns in "rows" field. */
  List<ResultTableColumnHeaders> columnHeaders;

  /** Identifier used to mark the structure as a result table. */
  String kind;

  /** Create new ResultTable from JSON data */
  ResultTable.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

    if (columnHeaders != null) {
      output["columnHeaders"] = new List();
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
  String toString() => JSON.stringify(this.toJson());

}

class ResultTableColumnHeaders {

  /** The type of the column (DIMENSION, METRIC). */
  String columnType;

  /** Type of the data in the column (STRING, INTEGER, FLOAT). */
  String dataType;

  /** The name of the dimension or metric. */
  String name;

  /** Create new ResultTableColumnHeaders from JSON data */
  ResultTableColumnHeaders.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

