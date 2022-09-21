// To parse this JSON data, do
//
//     final charts = chartsFromJson(jsonString);

import 'dart:convert';

Charts chartsFromJson(String str) => Charts.fromJson(json.decode(str));

String chartsToJson(Charts data) => json.encode(data.toJson());

class Charts {
  Charts({
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

  factory Charts.fromJson(Map<String, dynamic> json) => Charts(
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
