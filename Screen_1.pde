class Screen {
  ArrayList widgetList;
  color backgroundColor, borderColor;

  Screen(color backG) {

  }

  int getEvent(int mouseX, int mouseY, int currentWidget) {
    Widget aWidget = (Widget) widgetList.get(currentWidget);
    return aWidget.getEvent(mouseX, mouseY);
  }


  void draw() {
      background(backgroundColor);
    for (int i = 0; i<widgetList.size(); i++) {
      Widget aWidget = (Widget) widgetList.get(i);
      borderColor = aWidget.getBorderColor(mouseX, mouseY);
      stroke(borderColor);
      aWidget.draw();
    }
  }
  void addWidget(Widget theWidget) {
    screenList.add(theWidget);
  }
}
