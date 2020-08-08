
import 'package:edu_app/models/Bangla1stTopics.dart';
import 'package:flutter/material.dart';

class Bangla1stList extends StatelessWidget {

  final String banglatopics;

  Bangla1stList({Key key, this.banglatopics}) : super(key: key);

  final List<Bangla1stTopics> bangla1stTopics = Bangla1stTopics.getBangla1stTopics();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade900,

      appBar: AppBar(
        title: Text("Bangla 1st Topics"),
        backgroundColor: Colors.blueGrey.shade900,
      ),
      body: ListView.builder(
          itemCount: bangla1stTopics.length,
          itemBuilder: (BuildContext context, int index) {
            return Stack(
                children: <Widget>[
                  banglaCard(bangla1stTopics[index], context),
                  Positioned(
                      top: 7.0,
                      left: 3.0,
                      child: banglaListImage(bangla1stTopics[index],context))
                ]
            );
          }),
    );




  }


  Widget banglaCard(Bangla1stTopics banglaTopics,BuildContext context){
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
                  Text(banglaTopics.banglaTopicname,
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

      onTap:  ()=>debugPrint("Topics Name : ${banglaTopics.banglaTopicname}"),
    );
  }

  Widget banglaListImage(Bangla1stTopics image,BuildContext context){
    return Container(
      width: 111,
      height:111,
      decoration:BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(image.banglaImg),
          fit: BoxFit.cover,
        ),

      ),

    );

  }


}
