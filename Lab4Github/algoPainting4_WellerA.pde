PImage bg;
Snow[] flakes = new Snow[300];
void setup() {
  size(600, 375);
  bg = loadImage("Monke.png");
  
  for (int i = 0; i<flakes.length; i++) { 
    flakes[i] = new Snow(random(2, 10));
    flakes[i].spreadY(i);
  }
}


void draw() {

  image(bg, 0, 0);
  bodyParts();
  lowerBodyParts();
  headParts();
  bodyDetails();
  earParts();
  earDetails();
  faceParts();
  faceDetails();
  hairParts();
  characterAccessories();
  rightHand();
  backgroundObjects();
  
  for (int i = 0; i < flakes.length; i++) {
    flakes[i] .display();
  if (flakes[i].x > 280 && flakes[i].y >445 && flakes[i].x<400){
    flakes[i].bounce();  
  }
  }
  
  save("Output.png");
}


void bodyParts() {
  String bodyxyFormatRequired = "268,197 268,234 272,263 301,286 332,284 335,278 334,264 326,238 325,206 315,195 290,200 268,197";
  drawFunc(bodyxyFormatRequired,#8acd7d);
  
  String leftArmxyFormatRequired = "238,213 234,230 236,243 258,222 259,214 238,213";
  drawFunc(leftArmxyFormatRequired,#8acd7d);
  
  String leftHandxyFormatRequired = "237,241 237,229 246,223 257,222 262,225 267,229 278,229 286,233 286,236 269,236 273,240 273,244 271,244 266,243 267,245 270,249 268,251 261,250 266,255 264,257 255,254 243,247 237,241";
  drawFunc(leftHandxyFormatRequired,#e0e2d3);
  
  String rightArmxyFormatRequired = "328,191 338,200 340,212 352,255 341,257 331,252 326,234 326,208 318,194 328,191";
  drawFunc(rightArmxyFormatRequired,#8acd7d);
  
  
  
}

void rightHand(){
  String rightHandxyFormatRequired = "323,245 322,240 327,232 331,230 351,235 351,240 357,240 354,252 346,253 338,252 328,249 323,245";
  drawFunc(rightHandxyFormatRequired,#e0e2d3);
}

void lowerBodyParts(){
  
  String leftLegxyFormatRequired = "250,258 249,268 252,279 257,285 263,290 273,289 255,294 259,297 262,299 268,299 277,297 288,298 293,298 304,290 303,277 260,250";
  drawFunc(leftLegxyFormatRequired,#8acd7d);
  
  String leftFootxyFormatRequired = "269,297 265,301 249,308 252,315 247,318 251,323 257,321 262,322 266,325 268,329 277,329 278,323 281,321 284,327 291,326 292,299 282,298 269,297";
  drawFunc(leftFootxyFormatRequired,#e0e2d3);
  
  String rightLegxyFormatRequired = "354,251 358,264 357,280 355,288 349,294 344,296 322,296 340,305 341,310 338,317 323,315 311,315 312,309 305,303 301,295 308,287 325,273 330,253";
  drawFunc(rightLegxyFormatRequired,#8acd7d);
  
  String rightFootxyFormatRequired = "312,311 312,316 304,316 302,321 302,326 306,328 312,327 314,325 320,327 328,326 340,325 338,318 325,316 318,312";
  drawFunc(rightFootxyFormatRequired,#e0e2d3);
  
  String tailxyFormatRequired = "344,243 373,219 381,213 386,207 391,207 385,221 371,235 348,252";
  drawFunc(tailxyFormatRequired,#8acd7d);
  
  String tailFurxyFormatRequired = "386,207 386,201 384,195 382,192 379,187 373,181 378,175 383,177 380,173 382,171 389,177 392,182 392,191 392,200 391,207 386,207";
  drawFunc(tailFurxyFormatRequired,#005a6c);
}

void bodyDetails(){
  
  String faceDetailxyFormatRequired = "280,198 271,198 254,190 239,180 229,171 226,163 225,135 227,122 231,115 238,112 245,113 259,116 255,121 257,126 258,134 259,137 264,142 268,144 273,146 276,147 280,147 284,145 292,140 297,136 299,126 302,119 306,115 311,112 316,110 321,109 330,110 337,112 343,116 346,121 349,127 349,135 354,140 358,144 361,151 362,159 361,167 358,170 354,176 349,181 345,183 337,185 326,189 318,191 309,194 300,197 297,197 290,198 283,199";
  drawFunc(faceDetailxyFormatRequired,#e5e8e3);
  
  String lowerBodyDetailxyFormatRequired = "303,286 290,278 281,272 272,266 272,261 271,258 276,254 281,252 286,251 293,249 300,248 314,248 321,275 309,288";
  drawFunc(lowerBodyDetailxyFormatRequired,#e5e8e3);
}

void faceParts() {
  String leftEyexyFormatRequired = "243,151 238,145 232,140 232,127 236,121 241,119 245,117 250,119 254,123 257,127 257,132 257,141 255,144 250,148 246,150";
  drawFunc(leftEyexyFormatRequired,#006795);
  
  String rightEyexyFormatRequired = "320,148 311,147 305,143 302,138 301,132 301,125 305,120 311,117 318,115 325,115 331,120 336,126 338,131 337,138 334,142 329,146 323,149";
  drawFunc(rightEyexyFormatRequired,#006795);
  
  String mouthxyFormatRequired = "280,189 268,189 250,172 271,173 276,172 285,173 304,173 310,168 311,174 297,186 291,189 280,189";
  drawFunc(mouthxyFormatRequired,#603f3a);
}

void faceDetails(){
  
  String tonguexyFormatRequired = "310,174 299,180 291,183 286,184 280,184 273,184 270,183 267,180 265,177 265,175 274,174 280,174 288,174 294,175 302,174 307,174 310,174";
  drawFunc(tonguexyFormatRequired,#d19b99);
  
  //nose details
  line(269,159,272,162);
  line(280,162,284,159);
  
  String leftEyexyFormatRequired = "243,126 247,128 249,131 249,137 247,140 245,140 242,140 240,139 239,137 239,130 242,126 243,126";
  drawFunc(leftEyexyFormatRequired,#cfd7db);
  
  String rightEyexyFormatRequired = "320,124 323,125 325,126 326,128 326,134 325,136 323,138 321,139 319,139 316,139 315,138 313,137 312,135 312,129 313,127 315,125 317,124 320,124";
  drawFunc(rightEyexyFormatRequired,#cfd7db);
  
  
}

void earParts() {
  String leftEarxyFormatRequired = "225,169 219,169 210,165 204,156 195,133 195,128 194,108 216,90 224,99";
  drawFunc(leftEarxyFormatRequired,#8acd7d);
  
  String rightEarxyFormatRequired = "359,164 373,168 380,168 397,161 412,145 423,128 427,117 425,101 415,90 406,83 391,83 379,90 367,100";
  drawFunc(rightEarxyFormatRequired,#8acd7d);
}

void earDetails(){
  String leftEarDetailxyFormatRequired = "223,154 216,153 211,147 208,143 206,137 205,131 204,125 204,118 207,111 211,111 217,118 219,124 222,130 222,137 222,148 223,154";
  drawFunc(leftEarDetailxyFormatRequired,#e7cd49);
  
  String rightEarDetailxyFormatRequired = "372,134 376,123 379,117 385,109 391,104 398,101 404,103 408,107 409,112 409,118 407,125 406,132 403,138 396,143 389,148 385,150 379,150 373,146";
  drawFunc(rightEarDetailxyFormatRequired,#e7cd49);
}

void headParts() {
  String xyFormatRequired = "280,199 271,198 228,171 226,166 222,129 224,99 239,81 280,60 350,75 363,89 367,99 369,163 360,176 350,182 292,198";
  drawFunc(xyFormatRequired,#8acd7d);
}
void hairParts() {
  String xyFormatRequired = "275,115 270,108 270,91 257,104 253,103 251,97 258,87 239,82 247,68 256,65 257,49 265,45 272,51 279,32 290,21 299,32 299,42 295,52 311,45 338,50 339,53 321,62 350,73 326,80 301,84 307,96 302,101 295,101 283,90 283,108 276,115";
  drawFunc(xyFormatRequired,#005a6c);
}

void characterAccessories(){
  String gunStockxyFormatRequired = "261,214 250,212 241,211 235,212 230,212 212,209 195,207 173,203 188,169 215,179 227,185 234,189 237,192 245,197 251,198 258,196 263,197 269,199 266,206 264,211";
  drawFunc(gunStockxyFormatRequired,#965d4c);
  
  String gunReceiverxyFormatRequired = "263,214 269,198 276,200 300,199 322,206 335,211 355,219 355,215 365,218 375,219 372,222 382,226 377,234 361,230 357,230 349,248 322,235 309,231 283,220 280,228 262,221 266,217 263,214";
  drawFunc(gunReceiverxyFormatRequired,#101b23);
  
  String gunHandguardxyFormatRequired = "361,231 376,234 382,227 425,244 420,251 424,255 422,265 417,266 414,270 392,262 375,256 370,255 356,251 348,246 361,231";
  drawFunc(gunHandguardxyFormatRequired,#965d4c);
  
  String gunGastubexyFormatRequired = "423,254 427,247 457,259 458,269 452,270 451,262 432,255 424,255 423,254";
  drawFunc(gunGastubexyFormatRequired,#101b23);
  
  String gunBarrelxyFormatRequired = "426,259 500,289 505,292 510,295 505,299 501,295 498,294 497,292 471,282 423,264 426,259";
  drawFunc(gunBarrelxyFormatRequired,#101b23);
  
  String gunMagazinexyFormatRequired = "333,239 331,262 331,279 333,293 337,304 313,313 305,302 303,288 302,274 302,259 304,244 308,231 333,239";
  drawFunc(gunMagazinexyFormatRequired,#101b23);
  
  String gunTriggerguardxyFormatRequired = "306,231 300,243 279,232 284,222 280,221 275,236 302,246 310,232 306,231";
  drawFunc(gunTriggerguardxyFormatRequired,#101b23);
}

void backgroundObjects(){
 
  fill(#9c6049);
  rect(490,105,50,90);
  
  fill(#446447);
  triangle(450,110,580,110,520,10);
}

ArrayList<String> xyFormater(String s) {
  String[] result = s.split("[ ,]");
  ArrayList<String> returnMe = new ArrayList();

  for (int i = 0; i < result.length; i++) {

    returnMe.add(result[i]);
  }
  return returnMe;
}

void drawFunc(String xyFormatRequired,color c) {
  
  ArrayList<String> xyCoords = xyFormater(xyFormatRequired);
  
  fill(c);
  beginShape();
  for (int i = 0; i < xyCoords.size()-1; i++) {
    float x, y;
    //System.out.println(xyCoords.get(i));
    if (xyCoords.indexOf(xyCoords.get(i)) % 2 == 0) {
      x = float(Integer.parseInt(xyCoords.get(i)));
      y = float(Integer.parseInt(xyCoords.get(i+1)));
      //System.out.println(x + " " + y);
      vertex(x, y);
    }
  }
  endShape();
}

// https://openprocessing.org/sketch/115994/ SNOWFALL CODE FROM HERE.
class Snow {
  float x,y,alpha,diameter;
  float speed = random(.1,.9);
  float descentX;
  
  Snow (float tempD) {
    x = random(-0, width);
    y = random(0,40);
    diameter = tempD;
  }
  
  void spreadY(int i){
   y = y- i*3; 
  }
  
  void display() {
    alpha = map(y, 0, height, 255, -50);
    //noStroke();
    fill(255, alpha);
    ellipse(x, y, diameter, diameter);
    y = y + speed;
    x = x + descentX;
    
    //checking the boundary
    if (y > height) {
      y = -diameter;
    }
    if (x < 0-50) {
      x = width+diameter;} 
      else if (x > width+50){
      x = 0-diameter;
    }
    
    }
  void bounce(){
    y = y - speed; 
}
  
}
