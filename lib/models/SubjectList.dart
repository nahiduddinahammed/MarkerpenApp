class SubjectList {


  static List<SubjectList> getSubjectList()=> [
   SubjectList("ICT", "assets/ict.png"),
   SubjectList("Physics", "assets/physics.png"),
   SubjectList("Biology", "assets/biology.png"),
   SubjectList("Bangla", "assets/bangla.png"),
   SubjectList("English 2nd Paper", "assets/english.png"),
    SubjectList("Economics", "assets/english.png") ,

  ];

  String subject;
  String imagepath;

  SubjectList(this.subject, this.imagepath);
}