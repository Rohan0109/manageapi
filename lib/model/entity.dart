// To parse this JSON data, do
//
//     final entity = entityFromJson(jsonString);

import 'dart:convert';

import 'package:flutter/cupertino.dart';


List<Entity> entityFromJson(String str) => List<Entity>.from(json.decode(str).map((x) => Entity.fromJson(x)));

String entityToJson(List<Entity> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// To parse this JSON data, do
//
//     final entity = entityFromJson(jsonString);


class Entity {
  Entity({
    required this.entityname,
    required this.displayname,
    required this.description,
    required this.category,
    required  this.version,
    /*   required this.published,
    required this.scopeOfAccess,
    required   this.database,
    required    this.tableName,
    required   this.attributes,
    required   this.methods,
    this.operations,
    this.gateway,
    required   this.gatewayManagers,
    required   this.referentialKeyConstraints,
    this.referentialKeys,
    required   this.tableCreation,
    required   this.dataLastModifiedTime,
    required  this.cacheEnabled,
    required   this.cacheMaxAge,
    required   this.apiResponses,
    required    this.creationTime,
    required  this.lastModifiedTime,
    this.gatewaySettings,*/
  });

  String? entityname;
  String? displayname;
  String? description;
  String? category;
  String? version;
  /* bool published;
  String? scopeOfAccess;
  String? database;
  String? tableName;
  List<Attribute> attributes;
  List<String> methods;
  dynamic operations;
  dynamic gateway;
  List<String> gatewayManagers;
  List<dynamic> referentialKeyConstraints;
  dynamic referentialKeys;
  bool tableCreation;
  int dataLastModifiedTime;
  bool cacheEnabled;
  int cacheMaxAge;
  List<ApiResponse> apiResponses;
  int creationTime;
  int lastModifiedTime;
  dynamic gatewaySettings;*/

  factory Entity.fromJson(Map<String, dynamic> json) => Entity(
    entityname: json["entityname"],
    displayname: json["displayname"],
    description: json["description"],
    category: json["category"],
    version: json["version"],
    /*  published: json["published"],
    scopeOfAccess: json["scopeOfAccess"],
    database: json["database"],
    tableName: json["tableName"],
    attributes: List<Attribute>.from(json["attributes"].map((x) => Attribute.fromJson(x))),
    methods: List<String>.from(json["methods"].map((x) => x)),
    operations: json["operations"],
    gateway: json["gateway"],
    gatewayManagers: List<String>.from(json["gatewayManagers"].map((x) => x)),
    referentialKeyConstraints: List<dynamic>.from(json["referentialKeyConstraints"].map((x) => x)),
    referentialKeys: json["referentialKeys"],
    tableCreation: json["tableCreation"],
    dataLastModifiedTime: json["dataLastModifiedTime"],
    cacheEnabled: json["cacheEnabled"],
    cacheMaxAge: json["cacheMaxAge"],
    apiResponses: List<ApiResponse>.from(json["apiResponses"].map((x) => ApiResponse.fromJson(x))),
    creationTime: json["creationTime"],
    lastModifiedTime: json["lastModifiedTime"],
    gatewaySettings: json["gatewaySettings"],*/
  );

  Map<String, dynamic> toJson() => {
    "entityname": entityname,
    "displayname": displayname,
    "description": description,
    "category": category,
    "version": version,
    /*  "published": published,
    "scopeOfAccess": scopeOfAccess,
    "database": database,
    "tableName": tableName,
    "attributes": List<dynamic>.from(attributes.map((x) => x.toJson())),
    "methods": List<dynamic>.from(methods.map((x) => x)),
    "operations": operations,
    "gateway": gateway,
    "gatewayManagers": List<dynamic>.from(gatewayManagers.map((x) => x)),
    "referentialKeyConstraints": List<dynamic>.from(referentialKeyConstraints.map((x) => x)),
    "referentialKeys": referentialKeys,
    "tableCreation": tableCreation,
    "dataLastModifiedTime": dataLastModifiedTime,
    "cacheEnabled": cacheEnabled,
    "cacheMaxAge": cacheMaxAge,
    "apiResponses": List<dynamic>.from(apiResponses.map((x) => x.toJson())),
    "creationTime": creationTime,
    "lastModifiedTime": lastModifiedTime,
    "gatewaySettings": gatewaySettings,*/
  };
}

class ApiResponse {
  ApiResponse({
    required   this.method,
    required   this.description,
    required   this.payloadAsResponse,
    required   this.schemaValidation,
    required   this.content,
    required   this.apiResponseDetails,
  });

  String? method;
  String? description;
  bool payloadAsResponse;
  bool schemaValidation;
  List<Content> content;
  List<dynamic> apiResponseDetails;

  factory ApiResponse.fromJson(Map<String, dynamic> json) => ApiResponse(
    method: json["method"],
    description: json["description"],
    payloadAsResponse: json["payloadAsResponse"],
    schemaValidation: json["schemaValidation"],
    content: json["content"] = List<Content>.from(json["content"].map((x) => Content.fromJson(x))),
    apiResponseDetails: List<dynamic>.from(json["apiResponseDetails"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "method": method,
    "description": description,
    "payloadAsResponse": payloadAsResponse,
    "schemaValidation": schemaValidation,
    "content": content == null ? null : List<dynamic>.from(content.map((x) => x.toJson())),
    "apiResponseDetails": List<dynamic>.from(apiResponseDetails.map((x) => x)),
  };
}

class Content {
  Content({
    required this.description,
    required   this.contentType,
    required   this.type,
  });

  String? description;
  String? contentType;
  String? type;

  factory Content.fromJson(Map<String, dynamic> json) => Content(
    description: json["description"],
    contentType: json["content-type"],
    type: json["type"],
  );

  Map<String, dynamic> toJson() => {
    "description": description,
    "content-type": contentType,
    "type": type,
  };
}

class Attribute {
  Attribute({
    required   this.attributeName,
    this.displayName,
    this.description,
    required  this.type,
    required  this.size,
    required  this.precision,
    required  this.autoIncrement,
    this.defaultValue,
    required  this.subType,
    required  this.attributeType,
    required  this.required,
    required   this.dataStoragePolicy,
    required   this.apiAccessPolicy,
    required   this.displayPolicy,
    required   this.array,
    required   this.customType,
    this.updateOption,
    this.previousAttributeName,
  });

  String? attributeName;
  dynamic displayName;
  dynamic description;
  String? type;
  int size;
  int precision;
  bool autoIncrement;
  dynamic defaultValue;
  List<dynamic> subType;
  String? attributeType;
  bool required;
  String? dataStoragePolicy;
  String? apiAccessPolicy;
  String? displayPolicy;
  bool array;
  bool customType;
  dynamic updateOption;
  dynamic previousAttributeName;

  factory Attribute.fromJson(Map<String, dynamic> json) => Attribute(
    attributeName: json["attributeName"],
    displayName: json["displayName"],
    description: json["description"],
    type: json["type"],
    size: json["size"],
    precision: json["precision"],
    autoIncrement: json["autoIncrement"],
    defaultValue: json["defaultValue"],
    subType: List<dynamic>.from(json["subType"].map((x) => x)),
    attributeType: json["attributeType"],
    required: json["required"],
    dataStoragePolicy: json["dataStoragePolicy"],
    apiAccessPolicy: json["apiAccessPolicy"],
    displayPolicy: json["displayPolicy"] == null ? null : json["displayPolicy"],
    array: json["array"],
    customType: json["customType"],
    updateOption: json["updateOption"],
    previousAttributeName: json["previousAttributeName"],
  );

  Map<String, dynamic> toJson() => {
    "attributeName": attributeName,
    "displayName": displayName,
    "description": description,
    "type": type,
    "size": size,
    "precision": precision,
    "autoIncrement": autoIncrement,
    "defaultValue": defaultValue,
    "subType": List<dynamic>.from(subType.map((x) => x)),
    "attributeType": attributeType,
    "required": required,
    "dataStoragePolicy": dataStoragePolicy,
    "apiAccessPolicy": apiAccessPolicy,
    "displayPolicy": displayPolicy == null ? null : displayPolicy,
    "array": array,
    "customType": customType,
    "updateOption": updateOption,
    "previousAttributeName": previousAttributeName,
  };
}

