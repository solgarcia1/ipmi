PImage liminal;                   // Sol JIIMENEZ GARCIA // COMISION 2 // hice lo q pude :(
void setup() {
  size (800,400);
  background(76,148,209);
liminal = loadImage ( "montaña (1).jpg");
}

void draw(){
image (liminal,0,0,400,400);
println ( mouseX + " / " + mouseY );
colorMode(RGB);
noStroke();
fill(255);
ellipse (692,252,310, 310);
stroke(0);
fill(51,50,131);
triangle(722,201,798,374,610,386);

fill(43,72,45);
stroke(0);
triangle(360+400,175,394+400,393,313+400,394);
stroke(0);
fill(51,50,131);
triangle(420,205,461,365,398,362);
triangle(485,167,636,374,395,370);
noStroke();
triangle(632,398,674,277,543,244);
stroke(0);
fill(43,62,75);
triangle(270+400,272,302+400,392,239+400,393);

noStroke();
fill(15,15,52);
rect(395,369,799,385);
stroke(0);
line(538,241,672,275);

}
