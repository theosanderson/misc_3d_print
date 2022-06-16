dim_x = 245+5;

dim_y = 175+5;

dim_z = 8.3+5;

module copy_mirror(vec=[0,1,0])
{
    children();
    mirror(vec) children();
}

module quadcopy()
{
    copy_mirror([1,0,0]) copy_mirror() children();
}



difference(){
hull(){
quadcopy(){
translate([dim_x/2,dim_y/2,0]) cylinder(r=10,h=dim_z);
}

}

hull(){
quadcopy(){
translate([dim_x/2,dim_y/2,0]) cylinder(r=1,h=dim_z);
}
}

quadcopy(){
#translate([dim_x/2+4,dim_y/2+4,0]) cylinder(r=1,h=30);
}


}


difference(){
hull(){
quadcopy(){
translate([dim_x/2,dim_y/2,0]) cylinder(r=1,h=1);
}

}

cylinder(r=30,h=3);

quadcopy(){
#translate([dim_x/4,dim_y/4,0]) cylinder(r=35,h=3);



}

quadcopy(){
#translate([0.85*dim_x/2,0.8*dim_y/2,0]) cylinder(r=2,h=3);



}


}


