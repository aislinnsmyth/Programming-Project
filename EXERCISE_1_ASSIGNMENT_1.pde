int S1=200;
int S2=220;
int S3=180;

void setup(){
 size(450,450);
 noStroke();
}
void draw(){
 background(235);
 fill(256, 0, 0);
 rect(S1, 200, 60, 60);
 fill(255, 230, 0);
 rect(190, S2, 60, 60);
 fill(180, 0, 0);
 rect(S3,210, 60, 60);
 S1++;
 S2++;
 S3--;
}
