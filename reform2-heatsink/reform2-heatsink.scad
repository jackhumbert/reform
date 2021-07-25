// for MNT Reform 2.0 R-2
 
x1 = 6+8;
y1 = 4;

x2 = x1+23;
y2 = y1+10;

x3 = x2+12.75;
y3 = y2+60;

sink_width = 60;
sink_height = 5;
sink_depth = 25+y3+1.45;

fins_y = 20.5;
fin_width = sink_width+2;
fin_thickness = 2;
fin_spacing = 3;
fin_depth = sink_height-1.5;

module screw_hole(x,y,height) {
  shh=3;
  translate([x,y,height])   cylinder(h=shh, r=5/2, center = true, $fn=40);
  translate([x,y,height/2]) cylinder(h=height+1, r=2.2/2, center = true, $fn=20);
}

union() {
difference() {
  cube([sink_width,sink_depth,sink_height]);
  
  screw_hole(x1,y1,sink_height);
  screw_hole(x2,y1,sink_height);
  screw_hole(x3,y2,sink_height);
  screw_hole(x3,y3,sink_height);
  
  for (i = [-4 : -2]) {
    translate([-1,fins_y+i*fin_spacing,sink_height-fin_depth]) cube([fin_width-15,fin_thickness,fin_depth+1]);
  }
  
  for (i = [-1 : 16]) {
    translate([-1,fins_y+i*fin_spacing,sink_height-fin_depth]) cube([fin_width,fin_thickness,fin_depth+1]);
  }
  
  for (i = [17 : 18]) {
    translate([-1,fins_y+i*fin_spacing,sink_height-fin_depth]) cube([fin_width-15,fin_thickness,fin_depth+1]);
  }
  
  for (i = [19 : 25]) {
    translate([-1,fins_y+i*fin_spacing,sink_height-fin_depth]) cube([fin_width,fin_thickness,fin_depth+1]);
  }
  
  //translate([42.5,1.5,6.5]) linear_extrude(height = 2, center = true, convexity = 10) scale(0.12) import(file = "mnt.svg");
}

// cpu contact pad
translate([x3-17-15,y2+18.6-3.2,-1]) color([1,0,0]) cube([17,17,1]);
}