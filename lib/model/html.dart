// To parse this JSON data, do
//
//     final chart = chartFromJson(jsonString);

import 'dart:convert';

Chart chartFromJson(String str) => Chart.fromJson(json.decode(str));

String chartToJson(Chart data) => json.encode(data.toJson());

class Chart {
  Chart({
    required this.embedId,
    required this.templateVariables,
    required this.html,
    required this.graphTitle,
    required this.revoked,
    this.dashUrl,
    required this.sharedBy,
    this.dashName,
  });

  String embedId;
  List<dynamic> templateVariables;
  String html;
  String graphTitle;
  bool revoked;
  dynamic dashUrl;
  int sharedBy;
  dynamic dashName;

  factory Chart.fromJson(Map<String, dynamic> json) => Chart(
    embedId: json["embed_id"],
    templateVariables: List<dynamic>.from(json["template_variables"].map((x) => x)),
    html: json["html"],
    graphTitle: json["graph_title"],
    revoked: json["revoked"],
    dashUrl: json["dash_url"],
    sharedBy: json["shared_by"],
    dashName: json["dash_name"],
  );

  Map<String, dynamic> toJson() => {
    "embed_id": embedId,
    "template_variables": List<dynamic>.from(templateVariables.map((x) => x)),
    "html": html,
    "graph_title": graphTitle,
    "revoked": revoked,
    "dash_url": dashUrl,
    "shared_by": sharedBy,
    "dash_name": dashName,
  };
}
