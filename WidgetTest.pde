ArrayList widgetList;
PFont stdFont;
final int EVENT_BUTTON1=1;
final int EVENT_BUTTON2=2;
final int EVENT_BUTTON3=3;
final int EVENT_NULL=0;


void setup() {
  Widget widget1, widget2, widget3;
  size(400, 400);
  stdFont=loadFont("Chiller-Regular-36.vlw"); 
  textFont(stdFont);
  widget1=new Widget(100, 100, 80, 40, 
    "red", color(235, 0, 0), stdFont, 
    EVENT_BUTTON1);
  widget2=new Widget(100, 200, 100, 40, 
    "green", color(0, 235, 0), stdFont, EVENT_BUTTON2);
  widget3=new Widget(100, 300, 100, 40, 
    "blue", color(0, 0, 235), stdFont, 
    EVENT_BUTTON3);
  widgetList = new ArrayList();
  widgetList.add(widget1); 
  widgetList.add(widget2);
  widgetList.add(widget3);
}
void draw() {
  for (int i = 0; i<widgetList.size(); i++) {
    Widget aWidget = (Widget) widgetList.get(i);
    stroke(aWidget.borderColor);
    aWidget.draw();
  }
}
void mousePressed() {
  int event;
  for (int i = 0; i<widgetList.size(); i++) {
    Widget aWidget = (Widget) widgetList.get(i);
    event = aWidget.getEvent(mouseX, mouseY);
    switch(event) {
    case EVENT_BUTTON1:
      fill(235, 0, 0);
      rect(250, 200, 40, 40);
      break;
    case EVENT_BUTTON2:
      fill(0, 235, 0);
      rect(250, 200, 40, 40);
      break;
    case EVENT_BUTTON3:
      fill(0, 0, 235);
      rect(250, 200, 40, 40);
      break;
    }
  }
}
void mouseMoved() {
  int event;
  for (int i = 0; i<widgetList.size(); i++) {
    Widget aWidget = (Widget) widgetList.get(i);
    event = aWidget.getEvent(mouseX, mouseY);
    switch(event) {
    case EVENT_NULL:
      aWidget.borderColor = 0;
      break;
    case EVENT_BUTTON1:
      aWidget.borderColor = 255;
      break;
    case EVENT_BUTTON2:
      aWidget.borderColor = 255;
      break;
    case EVENT_BUTTON3:
      aWidget.borderColor = 255;
    }
  }
}
