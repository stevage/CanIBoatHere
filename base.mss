#landpolygons {
  line-width:1;
  line-color:white;
  polygon-opacity:1;
  polygon-fill:white;
}
@water:hsl(220,40%,0.9);

#riverbank { 
  polygon-fill:@water; 
  line-color:@water; 
  line-width:1;
}

#rivers {
  line-width:1;
  line-color:@water;
}

#ferry {
  line-width:1;
  line-color:#168;
  line-dasharray:8,12;
  [zoom >=14] {
    text-face-name:"CartoGothic Std Book";
    text-name:[name];
    text-placement:line;
    text-fill:#168;
  }
}

#slipway {
  line-color:darkblue;
  line-width:3;
}

#pier {
  line-color:black;
  line-width:3;
}

#places {
  text-face-name:'Roboto Bold';
  text-fill:gray;
  [zoom = 13] { text-size:12; }
  [zoom = 14] { text-size:14; }
  [zoom = 15] { text-size:15; }
  [zoom >= 16] { text-size:16; }
  text-opacity:0.5;
  text-name:[name];
}

#boatpois {
  marker-width:6;
  marker-fill:#f45;
  marker-line-color:#813;
  marker-allow-overlap:true;
}

#coastline::deepsea {
    line-color: hsl(180,40%,40%);
    line-width: 20;
    line-join: round;
    image-filters: agg-stack-blur(80,80);
  }
#coastline::shore {
    line-color: hsl(200,80%,70%);
    line-width: 5;
    line-join: round;
    image-filters: agg-stack-blur(5,5);
}

#demhs[zoom <= 11]
{
//  [zoom=11] { raster-opacity: 0.2; }
  [zoom<=8] { raster-opacity: 0.25; }
  [zoom=9] { raster-opacity: 0.18; }
  [zoom=10] { raster-opacity: 0.18; }
  [zoom=11] { raster-opacity: 0.14; }
  [zoom=12]  { raster-opacity:0.16;}
  [zoom=13] { raster-opacity: 0.18; }//.125
  [zoom=14] { raster-opacity: 0.16; }//.125
  [zoom=15] { raster-opacity: 0.15; }//.1
  [zoom>=16] { raster-opacity: 0.1; }//none


//  [zoom<=11][zoom >=10] { raster-opacity: 0.25; } // since no slope shading
//  raster-scaling:bilinear;
  raster-scaling:bilinear;
  raster-comp-op:multiply;
}
