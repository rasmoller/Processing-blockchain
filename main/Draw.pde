class Draw {
  float _size;
  boolean[] feedback;
  boolean locked = false;
  int procent;
  boolean runOnce = true;
  boolean RunOnce = true;

  Draw(float value) {
    _size = value;
  }
  float SizeCircle() {
    return _size;
  }

  boolean[] FeedBack() {
    return feedback;
  }


  void draws() {
    if (feedback == null) {
      feedback = new boolean[(N.sendData().length)/2];
    }
    if (dayEnded == true) locked = true;
    float size = SizeCircle();
    for (int i = 0; i <= N.allPosNodes().length - 1; i++) {
      for (int q = 0; q <= T.allPosTeachers().length -1; q++) {
        line(N.allPosNodes()[i][0], N.allPosNodes()[i][1], T.allPosTeachers()[q][0], T.allPosTeachers()[q][1]);
        ellipse(T.allPosTeachers()[q][0], T.allPosTeachers()[q][1], size, size);
      }
      for (int q = 0; q <= U.allPosUsers().length -1; q++) {
        line(N.allPosNodes()[i][0], N.allPosNodes()[i][1], U.allPosUsers()[q][0], U.allPosUsers()[q][1]);
        ellipse(U.allPosUsers()[q][0], U.allPosUsers()[q][1], size, size);
        feedback[q] = mainmenu.toggleBut(U.allPosUsers()[q][0] + size*0.6, U.allPosUsers()[q][1] - (size/4)/2, size/4, size/4, feedback[q], !locked);
        //feedback[q] = true;
      }
      pushStyle();
      size = width/5;
      ellipse(N.allPosNodes()[i][0], N.allPosNodes()[i][1], size, size);
      popStyle();
    }
    if (dayEnded == true && runOnce == true) {
      procent = N.userReturnData(L.FeedBack());
      runOnce = false;
    }
    if (dayEnded == true) {
      pushStyle();
      fill(0, 0, 0);
      textSize(20);
      textAlign(LEFT, TOP);
      for (int i = 0; i <= N.allPosNodes().length - 1; i++) {
        text(procent + "%", N.allPosNodes()[i][0], N.allPosNodes()[i][1] + width/20);
      }
      popStyle();
      if (procent <= 49 && dayEnded == true && N.arrived() == true) {
        /*
        pushStyle();
         rectMode(CENTER);
         fill(255);
         rect(width/2,height/2, 300, 100);
         fill(0);
         text("The block didn't meet the requirement and therefore the block will try to be accepted again.",width/2, height/2, 300, 100);
         popStyle();
         */
        delay(600);
        setup();
      }
      if (procent >= 50 && dayEnded == true && N.arrived() == true && RunOnce == true) {
        /*
        pushStyle();
         rectMode(CENTER);
         fill(255);
         rect(width/2,height/2, 300, 100);
         fill(0);
         text("The block met the requirement and there will be created a new block",width/2, height/2, 300, 100);
         popStyle();
         */
        delay(600);
        BC.addBlock(new block(N.sendData()));
        RunOnce = false;
        setup();
      }
    }
  }
}
