PFont stdFont;
ArrayList widgetList;
ArrayList screenList;
Screen screenOne;
Screen screenTwo;
final int EVENT_BUTTON1=1;
final int EVENT_BUTTON2=2;
final int EVENT_NULL=0;
int screenSwitch = 0;



void setup() {
  Screen screenOne, screenTwo;
  screenList = new ArrayList();
  screenOne = new Screen(#FF2343);
  screenTwo = new Screen(#FF1111);
  screenList.add(screenOne);
  screenList.add(screenTwo);
  Widget widget1, widget2, widget3, widget4;
  size(400, 400);
  stdFont=loadFont("Chiller-Regular-36.vlw"); 
  textFont(stdFont);
    widgetList = new ArrayList();
    widget1 =new Widget(100, 100, 80, 40, 
    "Button1", color(235, 0, 0), stdFont, EVENT_BUTTON1);
  widget2=new Widget(100, 200, 100, 40, 
    "Forward", color(0, 235, 0), stdFont, EVENT_BUTTON2);
  widget3=new Widget(100, 100, 120, 40, 
    "Button2", color(180), stdFont, EVENT_BUTTON1);
  widget4=new Widget(100, 100, 160, 40, 
    "Backwards", color(100), stdFont, EVENT_BUTTON2);
    screenList.add(screenOne);
  screenList.add(screenTwo);
  screenOne.addWidget(widget1);
  screenOne.addWidget(widget2);
  screenTwo.addWidget(widget3);
  screenTwo.addWidget(widget4);
  
  


}  

void mousePressed() {
  int event;
  Screen aScreen = (Screen) screenList.get(screenSwitch);
  for (int i = 0; i<aScreen.widgetList.size(); i++) {
    event = aScreen.getEvent(mouseX, mouseY, i);
    switch(event) {
    case EVENT_BUTTON1:
      if (screenSwitch == 0) {
        println("Button 1!!");
      } else {
        println("Button 2!!");
      }
      break;
    case EVENT_BUTTON2:
      if (screenSwitch == 0) {
        screenSwitch = 1;
      } else {
        screenSwitch = 0;
      }
      break;
    }
  }
}
void draw() {
  Screen aScreen = (Screen) screenList.get(screenSwitch);
  aScreen.draw();
}
