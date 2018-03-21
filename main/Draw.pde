class Draw {
  float _size;
  boolean[] feedback;

  Draw(float value) {
    _size = value;
  }
  float SizeCircle() {
    return _size;
  }
  
  boolean[] FeedBack(){
    return feedback;
  }


  void draws() {
    if (feedback == null) {
      feedback = new boolean[N.sendData().length];
    }
    float size = SizeCircle();
    for (int i = 0; i <= N.allPosNodes().length - 1; i++) {
      for (int q = 0; q <= T.allPosTeachers().length -1; q++) {
        line(N.allPosNodes()[i][0], N.allPosNodes()[i][1], T.allPosTeachers()[q][0], T.allPosTeachers()[q][1]);
        ellipse(T.allPosTeachers()[q][0], T.allPosTeachers()[q][1], size, size);
      }
      for (int q = 0; q <= U.allPosUsers().length -1; q++) {
        line(N.allPosNodes()[i][0], N.allPosNodes()[i][1], U.allPosUsers()[q][0], U.allPosUsers()[q][1]);
        ellipse(U.allPosUsers()[q][0], U.allPosUsers()[q][1], size, size);
        feedback[q] = mainmenu.toggleBut(U.allPosUsers()[q][0], U.allPosUsers()[q][1], size, size, feedback[q]);
        //println(q + " " +feedback[q]);
      }
      pushStyle();
      size = width/5;
      ellipse(N.allPosNodes()[i][0], N.allPosNodes()[i][1], size, size);
      popStyle();
    }
  }
}
