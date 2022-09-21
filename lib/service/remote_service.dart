
import 'dart:convert';
import 'dart:convert';
import 'dart:convert';
import 'dart:convert';
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


import '../model/data.dart';
import '../model/datadog.dart';
import '../model/entity.dart';






  class RemoteService {


  Future<List<Entity>?> getEntity() async {
  var client = http.Client();
  //  var uri = Uri.parse('https://dev-rohanmurali.gateway.apiplatform.io/v1/rohanshop');
  var uri = Uri.parse(
  'https://services.apiplatform.io/v1/admin/dev-rohanmurali/dev-rohanmurali/entities');
  // var response = await client.get(uri,headers: {"pkey": "3fdabdac7be3f1483fd675c4334d4a72"});
  var response = await client.get(
  uri, headers: {"pkey": "3fdabdac7be3f1483fd675c4334d4a72"});
  if (response.statusCode == 200) {
  var json = response.body;


  return entityFromJson(json);
  }
  }

  Future<List<Data>?> getData() async {
  var client = http.Client();
  var uri = Uri.parse(
  'https://dev-rohanmurali.gateway.apiplatform.io/v1/rohanshop');
  //var uri = Uri.parse('https://services.apiplatform.io/v1/admin/dev-rohanmurali/dev-rohanmurali/entities');
  // var response = await client.get(uri,headers: {"pkey": "3fdabdac7be3f1483fd675c4334d4a72"});
  var response = await client.get(
  uri, headers: {
  "pkey": "3fdabdac7be3f1483fd675c4334d4a72",
  "apikey": "a9WnwaZF0rrMy2T7iUcAnM9cEyTc7jTy"
  });
  if (response.statusCode == 200) {
  var json = response.body;

  return dataFromJson(json);
  }
  }

  Future<Charts?> getrequestcount() async {
  Map data = {
  "graph_json": {
  "viz": "timeseries",
  "requests": [
  {
  "style": {
  "palette": "dog_classic",
  "type": "solid",
  "width": "normal"
  },
  "type": "bars",
  "formulas": [
  {
  "formula": "query1"
  }
  ],
  "queries": [
  {
  "name": "query1",
  "data_source": "metrics",
  "query": "sum:apiplatform.request.count{name:dev-vikram-dev-vikram-test-v1}.as_count()"
  }
  ],
  "response_format": "timeseries"
  }
  ]
  },
  "legend": "yes",
  "timeframe": "1_week",
  "size": "small",
  "title": "Request Count : test (v1)"

  };
  var client = http.Client();
  var body = json.encode(data);
  var uri = Uri.parse(
  'https://services.gateway.apiplatform.io/v1/generateDatadogEmbed');
  var response = await client.post(
  uri,body: body, headers: {
  "pkey": " 3fd99a6cdda045e23fb310d0ba17f868",
  "apikey": "6aRV9kJkeD6tiCqtMMINA0ycDOLlSeE5",
    'Content-Type': 'application/json',

  });
  if (response.statusCode == 200) {

  var json = response.body;
  return chartsFromJson(json);
  }
  }
  Future<Charts?> gettotalrequest() async {
    Map data = {
      "graph_json": {
        "viz": "query_value",
        "requests": [
          {
            "response_format": "scalar",
            "queries": [
              {
                "name": "query1",
                "data_source": "metrics",
                "query": "sum:apiplatform.request.count{name:dev-vikram-dev-vikram-test-v1}.as_count()",
                "aggregator": "sum"
              }
            ],
            "conditional_formats": [],
            "formulas": [
              {
                "formula": "query1"
              }
            ]
          }
        ],
        "precision": 2,
        "autoscale": true,
        "timeseries_background": {
          "type": "bars"
        }
      },
      "legend": "yes",
      "timeframe": "1_week",
      "size": "small",
      "title": "Total Request : test (v1)"
    };
    var client = http.Client();
    var body = json.encode(data);
    var uri = Uri.parse(
        'https://services.gateway.apiplatform.io/v1/generateDatadogEmbed');
    var response = await client.post(
        uri,body: body, headers: {
      "pkey": " 3fd99a6cdda045e23fb310d0ba17f868",
      "apikey": "6aRV9kJkeD6tiCqtMMINA0ycDOLlSeE5",
      'Content-Type': 'application/json',

    });
    if (response.statusCode == 200) {

      var json = response.body;
      return chartsFromJson(json);
    }
  }
  }

/* Future<Entity?> getentity(){
    var client = http.Client();
    var uri =
    return


void main()
{
  var a=RemoteService();
  a.getChart();
}*/
