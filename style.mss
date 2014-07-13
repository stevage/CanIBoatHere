Map {
  background-color: #b8dee6;
}



// values
#linepolygon[zoom >=14] {
  text-name:"[ZoneType] + [ZoneID]";
  text-face-name:'CartoGothic Std Book';
  text-placement:line;
  text-halo-fill:white;
  text-halo-radius:1;
  text-allow-overlap:true;
  text-dy:4;
}

@polyfill:0.3;
// values
#polygonpolygon {
  // ZoneID, ScheduleRe, ZoneType, ZoneSubTyp, Claus
  
  line-color:#594;
  line-width:2;
  //polygon-opacity:1;
  //polygon-fill:purple;
  [zoom >= 15] {
  text-name:[ZoneType];
  text-face-name:'CartoGothic Std Book';
  text-allow-overlap:true;
  text-halo-fill:hsla(0,0%,100%,70%);
  text-halo-radius:1;
    text-wrap-width:50;
    text-wrap-before:true;
   }
  [ScheduleRe="004"],[ScheduleRe="007"] {
    // rivers
    text-placement:line;
  text-name:[ZoneType];
  text-face-name:'CartoGothic Std Book';
  }
  
  [ZoneType="Vessels Prohibited"] {
    polygon-fill:hsla(0,95%,0.5,0.5);
    line-color:red;
    }
  [ZoneType="Exclusive Use / Special Purpose"] {
    polygon-fill:gray;
    line-color:black;
    polygon-opacity:@polyfill;
    }
  [ZoneType="Activities Prohibited"] {
    polygon-fill:pink;
    //line-width:1;
    line-color:pink;
    text-placement:line;
    text-name:[ZoneType];
    text-face-name:'CartoGothic Std Book';
    text-fill:red;
    polygon-opacity:@polyfill;
    }
  [ZoneType="Speed Exclusion"] {
    polygon-fill:green;
    polygon-opacity:@polyfill;
    }
  [ZoneType="Speed Restriction"] {
    polygon-fill:orange;
    line-color:orange;
    polygon-opacity:@polyfill;

    }
  [ZoneType="Bathers Prohibited"] {
    polygon-fill:blue;
    polygon-opacity:@polyfill;
    }
  [ZoneType="Access Lane - Water Skiing"] {
    polygon-fill:grey;
    polygon-opacity:@polyfill;
    }
}

//values
#pointpoints {
/*  [zoom >= 13] { marker-width:6; }
  [zoom >= 15] { marker-width:8; }
  [zoom >= 16] { marker-width:9; }
  [zoom >= 17] { marker-width:10; }*/

  marker-width:10;
  marker-fill:#f45;
  marker-file:url('maki/triangle-24.png');
  [BoundaryMa="Feature"] {
    marker-fill:grey;
    marker-file:url('maki/triangle-24.png');
  }
  [AssetOrFea="Buoy"] {
    marker-fill:white;
    marker-file:url('maki/embassy-24.png');
  }
  [BoundaryMa="Derived Point"] {
    marker-fill:orange;
    marker-file:url('maki/triangle-stroked-18.png');
  }
  // or Reference Point...
  [Boundary_1 = "Primary"][zoom >= 15] {
    marker-line-width:3;
  }
  
  marker-line-color:gray;
  marker-allow-overlap:true;
  [zoom >= 16] { 
    text-name:[AssetOrF_1];
    text-face-name:'Roboto Light';
    text-dy:10;
  }
  
  //AssetOrFea sign etc
  //AssetOrF_1 - zone marker - red, permitted, ...
  
}


//values, but seem dupe?

#pointlink {
  marker-width:20;
  marker-fill:#f45;
  marker-line-color:#813;
  marker-allow-overlap:true;
}


////////// data but no attributes






////////////// nothing below here
#pointpolygon {
  marker-width:200;
  marker-fill:black;
  marker-fill-opacity:0.5;
  marker-line-color:#813;
  marker-allow-overlap:true;
}


#polygonpoints {
  line-color:#594;
  line-width:0.5;
  polygon-opacity:1;
  polygon-fill:#ae8;
}


#polygonlink {
  line-color:orange;
  line-width:0.5;
  polygon-opacity:1;
  polygon-fill:#ae8;
}


#linelink {
  line-width:1;
  line-color:#168;
}



#linepoints {
  marker-width:6;
  marker-fill:#f45;
  marker-line-color:#813;
  marker-allow-overlap:true;
}


