import 'package:edu_app/models/PhysicsTopics.dart';
import 'package:edu_app/models/SubjectList.dart';
import 'package:flutter/material.dart';

class Physicstopics extends StatelessWidget {

  final String ptopics;

  Physicstopics({Key key, this.ptopics}) : super(key: key);

  final List<PhysicsTopics> alltopics = PhysicsTopics.getPhysicsTopics();

  final List<SubjectList> allSubject = SubjectList.getSubjectList();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade900,

      appBar: AppBar(
        title: Text("Physics topics"),
        backgroundColor: Colors.blueGrey.shade900,
      ),
      body: ListView.builder(
          itemCount: alltopics.length,
          itemBuilder: (BuildContext context, int index) {
            return Stack(
                children: <Widget>[
                  physicsCard(alltopics[index], context),
                Positioned(
                    top: 6.0,
                    left: 3.0,
                    child: physicsListImage(alltopics[index],context))
                ]
            );
//            return Card(
//              color: Colors.black,
//              child: ListTile(
//                leading: CircleAvatar(
//                  child: Container(
//                    decoration: BoxDecoration(
//                        shape: BoxShape.circle,
//                        color: Colors.blue,
//
//                    ),
//                    child: Image.asset(allSubject[index].imagepath),
//
//                  ),
//                ),
//                title: Text(alltopics[index].topicname,
//                  style: TextStyle(
//                    color: Colors.white,
//                  ),
//                ),
//
//                onTap: () =>
//                    debugPrint("Topics Name : ${alltopics
//                        .elementAt(index)
//                        .topicname}"),
//              ),
//            );
          }),
    );




  }


  Widget physicsCard(PhysicsTopics physicsTopics,BuildContext context){
    return InkWell(
      child: Container(
        margin: EdgeInsets.only(left:60),
        width: MediaQuery.of(context).size.width,
        height: 113.0,
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
                  Text(physicsTopics.topicname,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),),
                ],
              ),
            ),
          ),
        ),
      ),

      onTap:  ()=>debugPrint("Topics Name : ${physicsTopics.topicname}"),
    );
  }

  Widget physicsListImage(PhysicsTopics image,BuildContext context){
    return Container(
      width: 100,
      height:100,
      decoration:BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(image.img),
          fit: BoxFit.cover,
          ),
            
        ),

      );
    
  }


}
