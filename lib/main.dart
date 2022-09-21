import 'package:newui/service/remote_service.dart';
import 'package:newui/metrics.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'model/data.dart';
import 'model/entity.dart';




void main() {

  runApp(MaterialApp( home: HomePageWidget(),));
}



class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

/*
  void _showAction(BuildContext context, int index) {

    const _actionTitles = ['Create Post', 'Upload Photo', 'Upload Video'];
    showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text(_actionTitles[index]),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('CLOSE'),
            ),
          ],
        );
      },
    );
  }
*/
class _HomePageWidgetState extends State<HomePageWidget> {
  TextEditingController? searchBarController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  List<Entity>? entity;
  List<Data>? data;

  var isLoaded = false;

  @override
  void initState() {

    super.initState();
    searchBarController = TextEditingController();
    getapi();
    getItem();

  }

  getapi() async {
    entity = await RemoteService().getEntity();
    if (entity != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }
  getItem() async {
    data = await RemoteService().getData();
    if (data != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
   makeListTile(Entity entity)=>(
    Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
      child: Row(
        mainAxisSize: MainAxisSize.max,

        children: [
          Expanded(

            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            InkWell(
                              onTap: () async {},
                              child: Text(
                                entity.version??'Loading...',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                  fontFamily: 'Rubik',
                                  color: Color(0xFF20222A),
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(8, 0, 120, 0),
                              child: Text(
                                entity!.entityname??"Loading...",
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                  fontFamily: 'Rubik',
                                  color: Color(0xFF191B22),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: [
                                  FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'get',
                                    options: FFButtonOptions(
                                      color: Colors.orange,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                        fontFamily: 'Rubik',
                                        color: Colors.white,
                                        fontSize: 1,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      elevation: 2,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: 8,
                                    ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'put',
                                    options: FFButtonOptions(
                                      color: Colors.orange,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                        fontFamily: 'Rubik',
                                        color: Colors.white,
                                        fontSize: 1,
                                      ),
                                      elevation: 2,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: 8,
                                    ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'patch',
                                    options: FFButtonOptions(
                                      color: Colors.orange,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                        fontSize: 1,
                                      ),
                                      elevation: 2,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: 8,
                                    ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'delete',
                                    options: FFButtonOptions(
                                      color: Colors.orange,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                        fontSize: 1,
                                      ),
                                      elevation: 2,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: 8,
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
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFFEDA6A),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4,
                    color: Color(0xFFB2731B),
                    offset: Offset(0, 2),
                  )
                ],
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.transparent,
                ),
              ),
              child: Align(
                alignment: AlignmentDirectional(0, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 3, 5),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 0,
                    borderWidth: 0,
                    buttonSize: 40,
                    fillColor: Colors.transparent,
                    icon: Icon(
                      Icons.navigate_next_outlined,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 30,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder:(context)=>Metricpage())
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),

    )
   );
    Card makeCard(Entity entity) {
      return Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: Color(0xFFFEDA6A),
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: makeListTile(entity),
      );
    }
      Widget Build_searchbar(){
        return Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: TextFormField(
                  controller: searchBarController,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Search your Api...',
                    labelStyle:
                    FlutterFlowTheme.of(context).bodyText2.override(
                      fontFamily: 'Outfit',
                      color: Color(0xFF191B22),
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                    hintStyle:
                    FlutterFlowTheme.of(context).bodyText2.override(
                      fontFamily: 'Outfit',
                      color: Color(0xFF191B22),
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFFEDA6A),
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFFEDA6A),
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFFF0000),
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFFF0000),
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    filled: true,
                    fillColor: Color(0xFFFEDA6A),
                    contentPadding:
                    EdgeInsetsDirectional.fromSTEB(24, 24, 20, 24),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color(0xFF191B22),
                      size: 16,
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Outfit',
                    color: Color(0xFF191B22),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30,
                borderWidth: 1,
                buttonSize: 50,
                icon: Icon(
                  Icons.search_sharp,
                  color: Color(0xFFFEDA6A),
                  size: 30,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ],
          ),
        );
      }
      Widget Buildapilist(){
        return Padding(
            padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 8),
            /*child: ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      itemCount: entity?.length,
      itemBuilder: (BuildContext context, int index) {
        return makeCard(entity![index]!);
      },


    ),*/
            child: ListView.builder(
              itemCount: entity?.length,
              itemBuilder: (BuildContext context,int index){
                final entities = entity![index]!;
                return GestureDetector(

                  child: makeCard( entities),
                );
              },

            )

        );
      }

      Widget makeBody() {

        return    Container(
          child: Column(
            children: [
              Row(children: [
                Build_searchbar()
              ]),

              Row(
                  children: [
                    Buildapilist()
                  ]
              )
            ],
          ),

        );
      }

      return Scaffold(
        bottomNavigationBar: Container(


          height: 55.0,
          child: BottomAppBar(
            elevation: 5,
            color: Color(0xFFFEDA6A),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.edit_note_rounded, color: Color(0xFFB2731B)),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.blur_on, color: Color(0xFFB2731B)),
                  onPressed: () {},
                ),
                /*  IconButton(
              icon: Icon(Icons.radar, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.account_box, color: Colors.white),
              onPressed: () {},
            )*/
              ],
            ),
          ),
        ),
        key: scaffoldKey,

        appBar: AppBar(
          backgroundColor: Color(0xFF191B22),
          iconTheme: IconThemeData(color: Color(0xFF393F4D)),
          automaticallyImplyLeading: true,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Color(0xFFFEDA6A),
              size: 30,
            ),
            onPressed: () {
              print('IconButton pressed ...');
            },
          ),
          title: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(80, 0, 60, 0),
            child: GradientText(
              'Manage',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Rubik',
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
              colors: [Color(0xFFFEDA6A), Color(0xFFB2731B)],
              gradientType: GradientType.radial,
              radius: 70,
            ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 5,
        ),
        backgroundColor: Color(0xFF191B22),

        body:Center(
          child:Column(
            children: [
               Build_searchbar(),
              Buildapilist()
            ],
          ),
        ),
      );
    }
  }

