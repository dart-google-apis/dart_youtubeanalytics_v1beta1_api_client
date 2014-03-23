part of youtubeanalytics_v1beta1_api;

/** A paginated list of batchReportDefinition resources returned in response to a youtubeAnalytics.batchReportDefinitions.list request. */
class BatchReportDefinitionList {

  /** A list of batchReportDefinition resources that match the request criteria. */
  core.List<BatchReportDefinitionTemplate> items;

  /** This value specifies the type of data included in the API response. For the list method, the kind property value is youtubeAnalytics#batchReportDefinitionList. */
  core.String kind;

  /** Create new BatchReportDefinitionList from JSON data */
  BatchReportDefinitionList.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new BatchReportDefinitionTemplate.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for BatchReportDefinitionList */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of BatchReportDefinitionList */
  core.String toString() => JSON.encode(this.toJson());

}

/** Contains single batchReportDefinition resource. */
class BatchReportDefinitionTemplate {

  /** Default report definition's output. */
  core.List<BatchReportDefinitionTemplateDefaultOutput> defaultOutput;

  /** The ID that YouTube assigns and uses to uniquely identify the report definition. */
  core.String id;

  /** Name of the report definition. */
  core.String name;

  /** Status of the report definition. */
  core.String status;

  /** Type of the report definition. */
  core.String type;

  /** Create new BatchReportDefinitionTemplate from JSON data */
  BatchReportDefinitionTemplate.fromJson(core.Map json) {
    if (json.containsKey("defaultOutput")) {
      defaultOutput = json["defaultOutput"].map((defaultOutputItem) => new BatchReportDefinitionTemplateDefaultOutput.fromJson(defaultOutputItem)).toList();
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for BatchReportDefinitionTemplate */
  core.Map toJson() {
    var output = new core.Map();

    if (defaultOutput != null) {
      output["defaultOutput"] = defaultOutput.map((defaultOutputItem) => defaultOutputItem.toJson()).toList();
    }
    if (id != null) {
      output["id"] = id;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (status != null) {
      output["status"] = status;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of BatchReportDefinitionTemplate */
  core.String toString() => JSON.encode(this.toJson());

}

class BatchReportDefinitionTemplateDefaultOutput {

  /** Format of the output. */
  core.String format;

  /** Type of the output. */
  core.String type;

  /** Create new BatchReportDefinitionTemplateDefaultOutput from JSON data */
  BatchReportDefinitionTemplateDefaultOutput.fromJson(core.Map json) {
    if (json.containsKey("format")) {
      format = json["format"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for BatchReportDefinitionTemplateDefaultOutput */
  core.Map toJson() {
    var output = new core.Map();

    if (format != null) {
      output["format"] = format;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of BatchReportDefinitionTemplateDefaultOutput */
  core.String toString() => JSON.encode(this.toJson());

}

/** A paginated list of batchReport resources returned in response to a youtubeAnalytics.batchReport.list request. */
class BatchReportList {

  /** A list of batchReport resources that match the request criteria. */
  core.List<BatchReportTemplate> items;

  /** This value specifies the type of data included in the API response. For the list method, the kind property value is youtubeAnalytics#batchReportList. */
  core.String kind;

  /** Create new BatchReportList from JSON data */
  BatchReportList.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new BatchReportTemplate.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for BatchReportList */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of BatchReportList */
  core.String toString() => JSON.encode(this.toJson());

}

/** Contains single batchReport resource. */
class BatchReportTemplate {

  /** The ID that YouTube assigns and uses to uniquely identify the report. */
  core.String id;

  /** Report outputs. */
  core.List<BatchReportTemplateOutputs> outputs;

  /** The ID of the the report definition. */
  core.String report_id;

  /** Period included in the report. For reports containing all entities endTime is not set. Both startTime and endTime are inclusive. */
  BatchReportTemplateTimeSpan timeSpan;

  /** The time when the report was updated. */
  core.String timeUpdated;

  /** Create new BatchReportTemplate from JSON data */
  BatchReportTemplate.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("outputs")) {
      outputs = json["outputs"].map((outputsItem) => new BatchReportTemplateOutputs.fromJson(outputsItem)).toList();
    }
    if (json.containsKey("report_id")) {
      report_id = json["report_id"];
    }
    if (json.containsKey("timeSpan")) {
      timeSpan = new BatchReportTemplateTimeSpan.fromJson(json["timeSpan"]);
    }
    if (json.containsKey("timeUpdated")) {
      timeUpdated = json["timeUpdated"];
    }
  }

  /** Create JSON Object for BatchReportTemplate */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (outputs != null) {
      output["outputs"] = outputs.map((outputsItem) => outputsItem.toJson()).toList();
    }
    if (report_id != null) {
      output["report_id"] = report_id;
    }
    if (timeSpan != null) {
      output["timeSpan"] = timeSpan.toJson();
    }
    if (timeUpdated != null) {
      output["timeUpdated"] = timeUpdated;
    }

    return output;
  }

  /** Return String representation of BatchReportTemplate */
  core.String toString() => JSON.encode(this.toJson());

}

class BatchReportTemplateOutputs {

  /** Cloud storage URL to download this report. This URL is valid for 30 minutes. */
  core.String downloadUrl;

  /** Format of the output. */
  core.String format;

  /** Type of the output. */
  core.String type;

  /** Create new BatchReportTemplateOutputs from JSON data */
  BatchReportTemplateOutputs.fromJson(core.Map json) {
    if (json.containsKey("downloadUrl")) {
      downloadUrl = json["downloadUrl"];
    }
    if (json.containsKey("format")) {
      format = json["format"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for BatchReportTemplateOutputs */
  core.Map toJson() {
    var output = new core.Map();

    if (downloadUrl != null) {
      output["downloadUrl"] = downloadUrl;
    }
    if (format != null) {
      output["format"] = format;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of BatchReportTemplateOutputs */
  core.String toString() => JSON.encode(this.toJson());

}

/** Period included in the report. For reports containing all entities endTime is not set. Both startTime and endTime are inclusive. */
class BatchReportTemplateTimeSpan {

  /** End of the period included in the report. Inclusive. For reports containing all entities endTime is not set. */
  core.String endTime;

  /** Start of the period included in the report. Inclusive. */
  core.String startTime;

  /** Create new BatchReportTemplateTimeSpan from JSON data */
  BatchReportTemplateTimeSpan.fromJson(core.Map json) {
    if (json.containsKey("endTime")) {
      endTime = json["endTime"];
    }
    if (json.containsKey("startTime")) {
      startTime = json["startTime"];
    }
  }

  /** Create JSON Object for BatchReportTemplateTimeSpan */
  core.Map toJson() {
    var output = new core.Map();

    if (endTime != null) {
      output["endTime"] = endTime;
    }
    if (startTime != null) {
      output["startTime"] = startTime;
    }

    return output;
  }

  /** Return String representation of BatchReportTemplateTimeSpan */
  core.String toString() => JSON.encode(this.toJson());

}

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
