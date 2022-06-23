x=294;
y=425;
z=50;

//cube([x,y,z]);

x_use = x-10;
y_use=y-10;
z_use=z-5;

total_x = 6;
total_y=8;
thickness = 1.5;
z_thickness=1.5;


module piece(x_span=1,y_span=1){
    
    x_width = x_span * (x_use/total_x);
    
    y_width = y_span * (y_use/total_y);
    difference(){
        
    cube([x_width,y_width,z_use]);
        translate([thickness,thickness,z_thickness])
        cube([x_width-thickness*2,y_width-thickness*2,z_use]);
        
    }
    
    
};

piece(3,2);


