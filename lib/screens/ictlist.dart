import 'package:edu_app/models/IctTopics.dart';

import 'package:flutter/material.dart';

class IctList extends StatelessWidget {

  final String icttopics;

  IctList({Key key, this.icttopics}) : super(key: key);

  final List<IctTopics> ictTopics = IctTopics.getIctTopics();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade900,

      appBar: AppBar(
        title: Text("ICT Topics"),
        backgroundColor: Colors.blueGrey.shade900,
      ),
      body: ListView.builder(
          itemCount: ictTopics.length,
          itemBuilder: (BuildContext context, int index) {
            return Stack(
                children: <Widget>[
                  ictCard(ictTopics[index], context),
                  Positioned(
                      top: 7.0,
                      left: 3.0,
                      child: ictListImage(ictTopics[index],context))
                ]
            );
          }),
    );




  }


  Widget ictCard(IctTopics ictList,BuildContext context){
    return InkWell(
      child: Container(
        margin: EdgeInsets.only(left:60),
        width: MediaQuery.of(context).size.width,
        height: 125.0,
        child: Card(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0,bottom: 8.0, left:50),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(ictList.ictTopicname,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),),
                ],
              ),
            ),
          ),
        ),
      ),

      onTap:  ()=>debugPrint("Topics Name : ${ictList.ictTopicname}"),
    );
  }

  Widget ictListImage(IctTopics image,BuildContext context){
    return Container(
      width: 111,
      height:111,
      decoration:BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(image.ictImg),
          fit: BoxFit.cover,
        ),

      ),

    );

  }


}
