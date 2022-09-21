import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  PageController? pageviewController;
  String? dropDownValue1;
  bool? checkboxListTileValue1;
  TextEditingController? textController4;
  TextEditingController? textController5;
  String? dropDownValue2;
  bool? checkboxListTileValue2;
  TextEditingController? textController6;
  String? dropDownValue3;
  bool? checkboxListTileValue3;
  TextEditingController? textController7;
  TextEditingController? textController8;
  String? dropDownValue4;
  bool? checkboxListTileValue4;
  TextEditingController? textController9;
  String? dropDownValue5;
  bool? checkboxListTileValue5;
  TextEditingController? textController10;
  TextEditingController? textController11;
  String? dropDownValue6;
  bool? checkboxListTileValue6;
  TextEditingController? textController12;
  bool? checkboxListTileValue7;
  TextEditingController? textController13;
  TextEditingController? textController14;
  TextEditingController? textController1;
  TextEditingController? textController2;
  TextEditingController? textController3;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
    textController10 = TextEditingController();
    textController11 = TextEditingController();
    textController12 = TextEditingController();
    textController4 = TextEditingController();
    textController5 = TextEditingController();
    textController6 = TextEditingController();
    textController7 = TextEditingController();
    textController8 = TextEditingController();
    textController9 = TextEditingController();
    textController13 = TextEditingController();
    textController14 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFF86500),
        automaticallyImplyLeading: false,
        title: Text(
          'MANAGE DEFINITION FOR API',
          style: FlutterFlowTheme.of(context).title2.override(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: Color(0xFFFFEEDC),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: 'Save',
                      options: FFButtonOptions(
                        width: 80,
                        height: 40,
                        color: Color(0xFFF86500),
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyText1
                            .override(
                          fontFamily: 'Poppins',
                          color:
                          FlutterFlowTheme.of(context).primaryBtnText,
                        ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                       // borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: 'Copy to',
                      options: FFButtonOptions(
                        width: 95,
                        height: 40,
                        color: Color(0xFFF86500),
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyText1
                            .override(
                          fontFamily: 'Poppins',
                          color:
                          FlutterFlowTheme.of(context).primaryBtnText,
                        ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                       // borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: 'Redeploy',
                      options: FFButtonOptions(
                        width: 100,
                        height: 40,
                        color: Color(0xFFF86500),
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyText1
                            .override(
                          fontFamily: 'Poppins',
                          color:
                          FlutterFlowTheme.of(context).primaryBtnText,
                        ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                      //  borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: 'Run Test',
                      options: FFButtonOptions(
                        width: 100,
                        height: 40,
                        color: Color(0xFFF86500),
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyText1
                            .override(
                          fontFamily: 'Poppins',
                          color:
                          FlutterFlowTheme.of(context).primaryBtnText,
                        ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        //borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.1, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextFormField(
                          controller: textController1,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Enter Category',
                            hintText: 'Category',
                            hintStyle: FlutterFlowTheme.of(context).bodyText2,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 12,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 12,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                          ),
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                        TextFormField(
                          controller: textController2,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Enter Version',
                            hintText: 'Version',
                            hintStyle: FlutterFlowTheme.of(context).bodyText2,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                          ),
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                        TextFormField(
                          controller: textController3,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Enter Api Name',
                            hintText: 'Api Name',
                            hintStyle: FlutterFlowTheme.of(context).bodyText2,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                          ),
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0.05, 0),
                  child: DefaultTabController(
                    length: 5,
                    initialIndex: 0,
                    child: Column(
                      children: [
                        TabBar(
                          isScrollable: true,
                          labelColor: Color(0xFFFF8800),
                          labelStyle: FlutterFlowTheme.of(context).bodyText1,
                          indicatorColor: Color(0xFFFF8800),
                          tabs: [
                            Tab(
                              text: 'Data Storage',
                            ),
                            Tab(
                              text: 'api gateway',
                            ),
                            Tab(
                              text: 'api method defenition',
                            ),
                            Tab(
                              text: 'cache',
                            ),
                            Tab(
                              text: 'Description ',
                            ),
                          ],
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              InkWell(
                                onTap: () async {},
                                child: Container(
                                  width: double.infinity,
                                  height: 0,
                                  child: Stack(
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 25, 0, 25),
                                        child: PageView(
                                          controller: pageviewController ??=
                                              PageController(initialPage: 0),
                                          scrollDirection: Axis.horizontal,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5, 0, 5, 0),
                                              child: ListView(
                                                padding: EdgeInsets.zero,
                                                scrollDirection: Axis.vertical,
                                                children: [
                                                  Text(
                                                    'SNO',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                        context)
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Poppins',
                                                      color:
                                                      Color(0xFFFF8800),
                                                      fontSize: 24,
                                                    ),
                                                  ),
                                                  FlutterFlowDropDown(
                                                    options: ['Option 1'],
                                                    onChanged: (val) =>
                                                        setState(() =>
                                                        dropDownValue1 =
                                                            val),
                                                    width: 180,
                                                    height: 50,
                                                    textStyle:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .bodyText1,
                                                    hintText: 'DATA TYPE ...',
                                                    fillColor:
                                                    Color(0xFFFFEEDC),
                                                    elevation: 2,
                                                    borderColor:
                                                    Colors.transparent,
                                                    borderWidth: 0,
                                                    borderRadius: 0,
                                                    margin:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        12, 4, 12, 4),
                                                    hidesUnderline: true,
                                                  ),
                                                  Theme(
                                                    data: ThemeData(
                                                      unselectedWidgetColor:
                                                      Color(0xFF1C1E1E),
                                                    ),
                                                    child: CheckboxListTile(
                                                      value:
                                                      checkboxListTileValue1 ??=
                                                      true,
                                                      onChanged: (newValue) =>
                                                          setState(() =>
                                                          checkboxListTileValue1 =
                                                          newValue!),
                                                      title: Text(
                                                        'ARRAY',
                                                        style:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .bodyText1,
                                                      ),
                                                      tileColor:
                                                      Color(0xFFFFEEDC),
                                                      activeColor:
                                                      Color(0xFFFF8800),
                                                      dense: false,
                                                      controlAffinity:
                                                      ListTileControlAffinity
                                                          .trailing,
                                                    ),
                                                  ),
                                                  TextFormField(
                                                    controller: textController4,
                                                    autofocus: true,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText: 'SIZE',
                                                      hintText: 'SIZE',
                                                      hintStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyText2,
                                                      enabledBorder:
                                                      UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                          Color(0x00000000),
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                        const BorderRadius
                                                            .only(
                                                          topLeft:
                                                          Radius.circular(
                                                              4.0),
                                                          topRight:
                                                          Radius.circular(
                                                              4.0),
                                                        ),
                                                      ),
                                                      focusedBorder:
                                                      UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                          Color(0x00000000),
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                        const BorderRadius
                                                            .only(
                                                          topLeft:
                                                          Radius.circular(
                                                              4.0),
                                                          topRight:
                                                          Radius.circular(
                                                              4.0),
                                                        ),
                                                      ),
                                                      filled: true,
                                                      fillColor:
                                                      Color(0xFFFFEEDC),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                        context)
                                                        .bodyText1,
                                                    keyboardType:
                                                    TextInputType.number,
                                                  ),
                                                  TextFormField(
                                                    controller: textController5,
                                                    autofocus: true,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText: 'PRECISION',
                                                      hintText: 'PRECISION',
                                                      hintStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyText2,
                                                      enabledBorder:
                                                      UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                          Color(0x00000000),
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                        const BorderRadius
                                                            .only(
                                                          topLeft:
                                                          Radius.circular(
                                                              4.0),
                                                          topRight:
                                                          Radius.circular(
                                                              4.0),
                                                        ),
                                                      ),
                                                      focusedBorder:
                                                      UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                          Color(0x00000000),
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                        const BorderRadius
                                                            .only(
                                                          topLeft:
                                                          Radius.circular(
                                                              4.0),
                                                          topRight:
                                                          Radius.circular(
                                                              4.0),
                                                        ),
                                                      ),
                                                      filled: true,
                                                      fillColor:
                                                      Color(0xFFFFEEDC),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                        context)
                                                        .bodyText1,
                                                    keyboardType:
                                                    TextInputType.number,
                                                  ),
                                                  FlutterFlowDropDown(
                                                    options: ['Option 1'],
                                                    onChanged: (val) =>
                                                        setState(() =>
                                                        dropDownValue2 =
                                                            val),
                                                    width: 180,
                                                    height: 50,
                                                    textStyle:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .bodyText1,
                                                    hintText: 'KEY..',
                                                    fillColor:
                                                    Color(0xFFFFEEDC),
                                                    elevation: 2,
                                                    borderColor:
                                                    Colors.transparent,
                                                    borderWidth: 0,
                                                    borderRadius: 0,
                                                    margin:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        12, 4, 12, 4),
                                                    hidesUnderline: true,
                                                  ),
                                                  Theme(
                                                    data: ThemeData(
                                                      unselectedWidgetColor:
                                                      Color(0xFF1C1E1E),
                                                    ),
                                                    child: CheckboxListTile(
                                                      value:
                                                      checkboxListTileValue2 ??=
                                                      true,
                                                      onChanged: (newValue) =>
                                                          setState(() =>
                                                          checkboxListTileValue2 =
                                                          newValue!),
                                                      title: Text(
                                                        'REQUIRED',
                                                        style:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .bodyText1,
                                                      ),
                                                      tileColor:
                                                      Color(0xFFFFEEDC),
                                                      activeColor:
                                                      Color(0xFFFF8800),
                                                      dense: false,
                                                      controlAffinity:
                                                      ListTileControlAffinity
                                                          .trailing,
                                                    ),
                                                  ),
                                                  TextFormField(
                                                    controller: textController6,
                                                    autofocus: true,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText:
                                                      'DEFAULT VALUE',
                                                      hintText: 'DEFAULT VALUE',
                                                      hintStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyText2,
                                                      enabledBorder:
                                                      UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                          Color(0x00000000),
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                        const BorderRadius
                                                            .only(
                                                          topLeft:
                                                          Radius.circular(
                                                              4.0),
                                                          topRight:
                                                          Radius.circular(
                                                              4.0),
                                                        ),
                                                      ),
                                                      focusedBorder:
                                                      UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                          Color(0x00000000),
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                        const BorderRadius
                                                            .only(
                                                          topLeft:
                                                          Radius.circular(
                                                              4.0),
                                                          topRight:
                                                          Radius.circular(
                                                              4.0),
                                                        ),
                                                      ),
                                                      filled: true,
                                                      fillColor:
                                                      Color(0xFFFFEEDC),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                        context)
                                                        .bodyText1,
                                                    keyboardType:
                                                    TextInputType.number,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5, 0, 5, 0),
                                              child: ListView(
                                                padding: EdgeInsets.zero,
                                                scrollDirection: Axis.vertical,
                                                children: [
                                                  Text(
                                                    'PRICE',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                        context)
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Poppins',
                                                      color:
                                                      Color(0xFFFF8800),
                                                      fontSize: 24,
                                                    ),
                                                  ),
                                                  FlutterFlowDropDown(
                                                    options: ['Option 1'],
                                                    onChanged: (val) =>
                                                        setState(() =>
                                                        dropDownValue3 =
                                                            val),
                                                    width: 180,
                                                    height: 50,
                                                    textStyle:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .bodyText1,
                                                    hintText: 'DATA TYPE ...',
                                                    fillColor:
                                                    Color(0xFFFFEEDC),
                                                    elevation: 2,
                                                    borderColor:
                                                    Colors.transparent,
                                                    borderWidth: 0,
                                                    borderRadius: 0,
                                                    margin:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        12, 4, 12, 4),
                                                    hidesUnderline: true,
                                                  ),
                                                  Theme(
                                                    data: ThemeData(
                                                      unselectedWidgetColor:
                                                      Color(0xFF1C1E1E),
                                                    ),
                                                    child: CheckboxListTile(
                                                      value:
                                                      checkboxListTileValue3 ??=
                                                      true,
                                                      onChanged: (newValue) =>
                                                          setState(() =>
                                                          checkboxListTileValue3 =
                                                          newValue!),
                                                      title: Text(
                                                        'ARRAY',
                                                        style:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .bodyText1,
                                                      ),
                                                      tileColor:
                                                      Color(0xFFFFEEDC),
                                                      activeColor:
                                                      Color(0xFFFF8800),
                                                      dense: false,
                                                      controlAffinity:
                                                      ListTileControlAffinity
                                                          .trailing,
                                                    ),
                                                  ),
                                                  TextFormField(
                                                    controller: textController7,
                                                    autofocus: true,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText: 'SIZE',
                                                      hintText: 'SIZE',
                                                      hintStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyText2,
                                                      enabledBorder:
                                                      UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                          Color(0x00000000),
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                        const BorderRadius
                                                            .only(
                                                          topLeft:
                                                          Radius.circular(
                                                              4.0),
                                                          topRight:
                                                          Radius.circular(
                                                              4.0),
                                                        ),
                                                      ),
                                                      focusedBorder:
                                                      UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                          Color(0x00000000),
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                        const BorderRadius
                                                            .only(
                                                          topLeft:
                                                          Radius.circular(
                                                              4.0),
                                                          topRight:
                                                          Radius.circular(
                                                              4.0),
                                                        ),
                                                      ),
                                                      filled: true,
                                                      fillColor:
                                                      Color(0xFFFFEEDC),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                        context)
                                                        .bodyText1,
                                                    keyboardType:
                                                    TextInputType.number,
                                                  ),
                                                  TextFormField(
                                                    controller: textController8,
                                                    autofocus: true,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText: 'PRECISION',
                                                      hintText: 'PRECISION',
                                                      hintStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyText2,
                                                      enabledBorder:
                                                      UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                          Color(0x00000000),
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                        const BorderRadius
                                                            .only(
                                                          topLeft:
                                                          Radius.circular(
                                                              4.0),
                                                          topRight:
                                                          Radius.circular(
                                                              4.0),
                                                        ),
                                                      ),
                                                      focusedBorder:
                                                      UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                          Color(0x00000000),
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                        const BorderRadius
                                                            .only(
                                                          topLeft:
                                                          Radius.circular(
                                                              4.0),
                                                          topRight:
                                                          Radius.circular(
                                                              4.0),
                                                        ),
                                                      ),
                                                      filled: true,
                                                      fillColor:
                                                      Color(0xFFFFEEDC),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                        context)
                                                        .bodyText1,
                                                    keyboardType:
                                                    TextInputType.number,
                                                  ),
                                                  FlutterFlowDropDown(
                                                    options: ['Option 1'],
                                                    onChanged: (val) =>
                                                        setState(() =>
                                                        dropDownValue4 =
                                                            val),
                                                    width: 180,
                                                    height: 50,
                                                    textStyle:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .bodyText1,
                                                    hintText: 'KEY..',
                                                    fillColor:
                                                    Color(0xFFFFEEDC),
                                                    elevation: 2,
                                                    borderColor:
                                                    Colors.transparent,
                                                    borderWidth: 0,
                                                    borderRadius: 0,
                                                    margin:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        12, 4, 12, 4),
                                                    hidesUnderline: true,
                                                  ),
                                                  Theme(
                                                    data: ThemeData(
                                                      unselectedWidgetColor:
                                                      Color(0xFF1C1E1E),
                                                    ),
                                                    child: CheckboxListTile(
                                                      value:
                                                      checkboxListTileValue4 ??=
                                                      true,
                                                      onChanged: (newValue) =>
                                                          setState(() =>
                                                          checkboxListTileValue4 =
                                                          newValue!),
                                                      title: Text(
                                                        'REQUIRED',
                                                        style:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .bodyText1,
                                                      ),
                                                      tileColor:
                                                      Color(0xFFFFEEDC),
                                                      activeColor:
                                                      Color(0xFFFF8800),
                                                      dense: false,
                                                      controlAffinity:
                                                      ListTileControlAffinity
                                                          .trailing,
                                                    ),
                                                  ),
                                                  TextFormField(
                                                    controller: textController9,
                                                    autofocus: true,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText:
                                                      'DEFAULT VALUE',
                                                      hintText: 'DEFAULT VALUE',
                                                      hintStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyText2,
                                                      enabledBorder:
                                                      UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                          Color(0x00000000),
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                        const BorderRadius
                                                            .only(
                                                          topLeft:
                                                          Radius.circular(
                                                              4.0),
                                                          topRight:
                                                          Radius.circular(
                                                              4.0),
                                                        ),
                                                      ),
                                                      focusedBorder:
                                                      UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                          Color(0x00000000),
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                        const BorderRadius
                                                            .only(
                                                          topLeft:
                                                          Radius.circular(
                                                              4.0),
                                                          topRight:
                                                          Radius.circular(
                                                              4.0),
                                                        ),
                                                      ),
                                                      filled: true,
                                                      fillColor:
                                                      Color(0xFFFFEEDC),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                        context)
                                                        .bodyText1,
                                                    keyboardType:
                                                    TextInputType.number,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5, 0, 5, 0),
                                              child: ListView(
                                                padding: EdgeInsets.zero,
                                                scrollDirection: Axis.vertical,
                                                children: [
                                                  Text(
                                                    'ITEM',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                        context)
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Poppins',
                                                      color:
                                                      Color(0xFFFF8800),
                                                      fontSize: 24,
                                                    ),
                                                  ),
                                                  FlutterFlowDropDown(
                                                    options: ['Option 1'],
                                                    onChanged: (val) =>
                                                        setState(() =>
                                                        dropDownValue5 =
                                                            val),
                                                    width: 180,
                                                    height: 50,
                                                    textStyle:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .bodyText1,
                                                    hintText: 'DATA TYPE ...',
                                                    fillColor:
                                                    Color(0xFFFFEEDC),
                                                    elevation: 2,
                                                    borderColor:
                                                    Colors.transparent,
                                                    borderWidth: 0,
                                                    borderRadius: 0,
                                                    margin:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        12, 4, 12, 4),
                                                    hidesUnderline: true,
                                                  ),
                                                  Theme(
                                                    data: ThemeData(
                                                      unselectedWidgetColor:
                                                      Color(0xFF1C1E1E),
                                                    ),
                                                    child: CheckboxListTile(
                                                      value:
                                                      checkboxListTileValue5 ??=
                                                      true,
                                                      onChanged: (newValue) =>
                                                          setState(() =>
                                                          checkboxListTileValue5 =
                                                          newValue!),
                                                      title: Text(
                                                        'ARRAY',
                                                        style:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .bodyText1,
                                                      ),
                                                      tileColor:
                                                      Color(0xFFFFEEDC),
                                                      activeColor:
                                                      Color(0xFFFF8800),
                                                      dense: false,
                                                      controlAffinity:
                                                      ListTileControlAffinity
                                                          .trailing,
                                                    ),
                                                  ),
                                                  TextFormField(
                                                    controller:
                                                    textController10,
                                                    autofocus: true,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText: 'SIZE',
                                                      hintText: 'SIZE',
                                                      hintStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyText2,
                                                      enabledBorder:
                                                      UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                          Color(0x00000000),
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                        const BorderRadius
                                                            .only(
                                                          topLeft:
                                                          Radius.circular(
                                                              4.0),
                                                          topRight:
                                                          Radius.circular(
                                                              4.0),
                                                        ),
                                                      ),
                                                      focusedBorder:
                                                      UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                          Color(0x00000000),
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                        const BorderRadius
                                                            .only(
                                                          topLeft:
                                                          Radius.circular(
                                                              4.0),
                                                          topRight:
                                                          Radius.circular(
                                                              4.0),
                                                        ),
                                                      ),
                                                      filled: true,
                                                      fillColor:
                                                      Color(0xFFFFEEDC),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                        context)
                                                        .bodyText1,
                                                    keyboardType:
                                                    TextInputType.number,
                                                  ),
                                                  TextFormField(
                                                    controller:
                                                    textController11,
                                                    autofocus: true,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText: 'PRECISION',
                                                      hintText: 'PRECISION',
                                                      hintStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyText2,
                                                      enabledBorder:
                                                      UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                          Color(0x00000000),
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                        const BorderRadius
                                                            .only(
                                                          topLeft:
                                                          Radius.circular(
                                                              4.0),
                                                          topRight:
                                                          Radius.circular(
                                                              4.0),
                                                        ),
                                                      ),
                                                      focusedBorder:
                                                      UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                          Color(0x00000000),
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                        const BorderRadius
                                                            .only(
                                                          topLeft:
                                                          Radius.circular(
                                                              4.0),
                                                          topRight:
                                                          Radius.circular(
                                                              4.0),
                                                        ),
                                                      ),
                                                      filled: true,
                                                      fillColor:
                                                      Color(0xFFFFEEDC),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                        context)
                                                        .bodyText1,
                                                    keyboardType:
                                                    TextInputType.number,
                                                  ),
                                                  FlutterFlowDropDown(
                                                    options: ['Option 1'],
                                                    onChanged: (val) =>
                                                        setState(() =>
                                                        dropDownValue6 =
                                                            val),
                                                    width: 180,
                                                    height: 50,
                                                    textStyle:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .bodyText1,
                                                    hintText: 'KEY..',
                                                    fillColor:
                                                    Color(0xFFFFEEDC),
                                                    elevation: 2,
                                                    borderColor:
                                                    Colors.transparent,
                                                    borderWidth: 0,
                                                    borderRadius: 0,
                                                    margin:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        12, 4, 12, 4),
                                                    hidesUnderline: true,
                                                  ),
                                                  Theme(
                                                    data: ThemeData(
                                                      unselectedWidgetColor:
                                                      Color(0xFF1C1E1E),
                                                    ),
                                                    child: CheckboxListTile(
                                                      value:
                                                      checkboxListTileValue6 ??=
                                                      true,
                                                      onChanged: (newValue) =>
                                                          setState(() =>
                                                          checkboxListTileValue6 =
                                                          newValue!),
                                                      title: Text(
                                                        'REQUIRED',
                                                        style:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .bodyText1,
                                                      ),
                                                      tileColor:
                                                      Color(0xFFFFEEDC),
                                                      activeColor:
                                                      Color(0xFFFF8800),
                                                      dense: false,
                                                      controlAffinity:
                                                      ListTileControlAffinity
                                                          .trailing,
                                                    ),
                                                  ),
                                                  TextFormField(
                                                    controller:
                                                    textController12,
                                                    autofocus: true,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText:
                                                      'DEFAULT VALUE',
                                                      hintText: 'DEFAULT VALUE',
                                                      hintStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyText2,
                                                      enabledBorder:
                                                      UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                          Color(0x00000000),
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                        const BorderRadius
                                                            .only(
                                                          topLeft:
                                                          Radius.circular(
                                                              4.0),
                                                          topRight:
                                                          Radius.circular(
                                                              4.0),
                                                        ),
                                                      ),
                                                      focusedBorder:
                                                      UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                          Color(0x00000000),
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                        const BorderRadius
                                                            .only(
                                                          topLeft:
                                                          Radius.circular(
                                                              4.0),
                                                          topRight:
                                                          Radius.circular(
                                                              4.0),
                                                        ),
                                                      ),
                                                      filled: true,
                                                      fillColor:
                                                      Color(0xFFFFEEDC),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                        context)
                                                        .bodyText1,
                                                    keyboardType:
                                                    TextInputType.number,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Align(
                                        alignment: AlignmentDirectional(0, 1),
                                        child: Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0, 0, 0, 10),
                                          child: SmoothPageIndicator(
                                            controller: pageviewController ??=
                                                PageController(initialPage: 0),
                                            count: 3,
                                            axisDirection: Axis.horizontal,
                                            onDotClicked: (i) {
                                              pageviewController!.animateToPage(
                                                i,
                                                duration:
                                                Duration(milliseconds: 500),
                                                curve: Curves.ease,
                                              );
                                            },
                                            effect: ExpandingDotsEffect(
                                              expansionFactor: 2,
                                              spacing: 8,
                                              radius: 12,
                                              dotWidth: 16,
                                              dotHeight: 16,
                                              dotColor: Color(0xFFFFE0BF),
                                              activeDotColor: Color(0xFFFFA033),
                                              paintStyle: PaintingStyle.fill,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(),
                              FutureBuilder<ApiCallResponse>(
                                future: EntityCall.call(),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50,
                                        height: 50,
                                        child: CircularProgressIndicator(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                        ),
                                      ),
                                    );
                                  }
                                  final textEntityResponse = snapshot.data!;
                                  return Text(
                                    'Hello World',
                                    style:
                                    FlutterFlowTheme.of(context).bodyText1,
                                  );
                                },
                              ),
                              ListView(
                                padding: EdgeInsets.zero,
                                scrollDirection: Axis.vertical,
                                children: [
                                  Theme(
                                    data: ThemeData(
                                      unselectedWidgetColor: Color(0xFF95A1AC),
                                    ),
                                    child: CheckboxListTile(
                                      value: checkboxListTileValue7 ??= true,
                                      onChanged: (newValue) => setState(() =>
                                      checkboxListTileValue7 = newValue!),
                                      title: Text(
                                        'Enable cache',
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle1,
                                      ),
                                      tileColor: Color(0xFFF5F5F5),
                                      activeColor: Color(0xFFF86500),
                                      dense: false,
                                      controlAffinity:
                                      ListTileControlAffinity.trailing,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  TextFormField(
                                    controller: textController13,
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Api Display Name',
                                      hintText: 'Api Display  Name',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodyText2,
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFFFF8800),
                                    ),
                                  ),
                                  TextFormField(
                                    controller: textController14,
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Api Description ',
                                      hintText: 'Api Description ',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodyText2,
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFFFF8800),
                                    ),
                                  ),
                                ],
                              ),
                            ],
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
