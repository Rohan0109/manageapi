import 'dart:developer';
import 'dart:io';

import 'package:newui/service/remote_service.dart';


import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_web_view.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'model/datadog.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';



void main() => runApp( MaterialApp(
    home: Metricpage()));

class Metricpage extends StatefulWidget {
  const Metricpage({Key? key}) : super(key: key);

  @override
  _MetricpageState createState() => _MetricpageState();
}

class _MetricpageState extends State<Metricpage> {
  late Charts grc;
  late Charts gtr;

  PageController? pageViewController;
  String? dropDownValue1;
  String? dropDownValue2;

  var isLoaded = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();



  @override
  void initState() {
    super.initState();

    getrequestcount();
    gettotalrequest();

  }

  String? grc_url(){

     String s = grc.html;//'<iframe src="https://www.youtube.com/embed/MAT3z3xtcd4" width="560" height="315" frameborder="0" allowfullscreen="allowfullscreen"></iframe>';
     String t = gtr.html;
    List<String> tags_grc = s.replaceAll('<', ' ').replaceAll('>', ' ').split(' ');
     List<String> tags_gtr = t.replaceAll('<', ' ').replaceAll('>', ' ').split(' ');

    String srcTag_grc = tags_grc.where((s) => s.startsWith('src=')).first;
     String srcTag_gtr = tags_gtr.where((t) => t.startsWith('src=')).first;

    String uri_grc = srcTag_grc.substring(5, srcTag_grc.length - 1);
     return uri_grc.toString();
     String uri_gtr = srcTag_gtr.substring(5, srcTag_gtr.length - 1);

    return uri_gtr.toString();

   // String suffix = uri.split('/').last;

  }
  String? gtr_url(){

    //'<iframe src="https://www.youtube.com/embed/MAT3z3xtcd4" width="560" height="315" frameborder="0" allowfullscreen="allowfullscreen"></iframe>';
    String t = gtr.html;
        List<String> tags_gtr = t.replaceAll('<', ' ').replaceAll('>', ' ').split(' ');


    String srcTag_gtr = tags_gtr.where((t) => t.startsWith('src=')).first;


    String uri_gtr = srcTag_gtr.substring(5, srcTag_gtr.length - 1);

    return uri_gtr.toString();

    // String suffix = uri.split('/').last;

  }

  getrequestcount() async {

    grc = (await RemoteService().getrequestcount())!;
  //  print("metrics"+RemoteService().getChart()[0]);
    if (grc != null) {
      setState(() {
        isLoaded = true;
      });
    }

  }
  gettotalrequest() async {
    gtr = (await RemoteService().gettotalrequest())!;
    //  print("metrics"+RemoteService().getChart()[0]);
    if (gtr != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar:// Generated code for this AppBar Widget...
      AppBar(
        backgroundColor: Color(0xFF1C1E1E),
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {
            print('IconButton pressed ...');
          },
        ),
        title: Text(
          'METRICS',
          style: FlutterFlowTheme.of(context).title2.override(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),

      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              // Generated code for this Row Widget...
              Align(
                alignment: AlignmentDirectional(0.2, -0.15),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: FlutterFlowDropDown(
                          options: ['Option 1'],
                          onChanged: (val) => setState(() => dropDownValue1 = val),
                          width: 180,
                          height: 50,
                          textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                          ),
                          hintText: 'TIME FRAME',
                          fillColor: Color(0xFF1C1E1E),
                          elevation: 5,
                          borderColor: Colors.transparent,
                          borderWidth: 0,
                          borderRadius: 12,
                          margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                          hidesUnderline: true,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: FlutterFlowDropDown(
                          options: ['Option 1'],
                          onChanged: (val) => setState(() => dropDownValue2 = val),
                          width: 180,
                          height: 50,
                          textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                          ),
                          hintText: 'DISPLAY TYPE',
                          fillColor: Color(0xFF1C1E1E),
                          elevation: 2,
                          borderColor: Colors.transparent,
                          borderWidth: 0,
                          borderRadius: 12,
                          margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                          hidesUnderline: true,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0, 1),
                  child: Container(
                    width: double.infinity,
                    height: 500,
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                          child: PageView(
                            controller: pageViewController ??=
                                PageController(initialPage: 0),
                            scrollDirection: Axis.horizontal,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  AutoSizeText(
                                    gtr?.graphTitle??"TOTAL COUNT",
                                    style:
                                    FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                  Expanded(
                                    child: Align(

                                      child: FlutterFlowWebView(
                                        url:gtr_url()??"no url",

                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  AutoSizeText(
                                    grc?.graphTitle??"REQUEST COUNT",
                                    style:
                                    FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                  Expanded(
                                    child: Align(

                                      child: FlutterFlowWebView(
                                        url:grc_url()??"no url",

                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  AutoSizeText(
                                    'LATENCY ',
                                    style:
                                    FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  AutoSizeText(
                                    'AVERAGE  LATENCY',
                                    style:
                                    FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, 1),
                          child: Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                            child: SmoothPageIndicator(
                              controller: pageViewController ??=
                                  PageController(initialPage: 0),
                              count: 4,
                              axisDirection: Axis.horizontal,
                              onDotClicked: (i) {
                                pageViewController!.animateToPage(
                                  i,
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease,
                                );
                              },
                              effect: ExpandingDotsEffect(
                                expansionFactor: 2,
                                spacing: 8,
                                radius: 16,
                                dotWidth: 16,
                                dotHeight: 16,
                                dotColor: Color(0xFF9E9E9E),
                                activeDotColor: Color(0xFF3F51B5),
                                paintStyle: PaintingStyle.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

