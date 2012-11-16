@shade0: #FFFFFF;
@shade1: #FFFFFF;
@shade2: #FFFFB2;
@shade3: #FECC5C;
@shade4: #FD8D3C;
@shade5: #F03B20;
@shade6: #BD0026;
@shade7: #52514C;

@futura_med: "Futura Medium","Function Pro Medium","Ubuntu Regular","Trebuchet MS Regular","DejaVu Sans Book";

Map {
}

@land: url('images/img-thing10.jpg');

#impact_flood [zoom<11]{
  [Status='Flooded']
    {
 
    polygon-pattern-file: @land; 
    
    opacity:.3;
      line-color: gray;
  	   line-width: 2;
  	   line-opacity: 0.9;
  	}
    
//    polygon-fill: aqua;
//    opacity:0.5;

  
}

#impact {
  line-color: gray;
  line-width: 2;
  line-opacity: 0.9;
  polygon-fill: @shade0;
  polygon-opacity: 0.9;
  [impact =  0]      { polygon-fill: @shade1; polygon-opacity:0; line-opacity: 0;}
  [impact >  0][impact < 100]    { polygon-fill: @shade1; polygon-opacity:0; line-opacity: 0;}
  [impact >= 100][impact < 2242]      { polygon-fill: @shade2; }
  [impact >= 2242][impact < 9276]     { polygon-fill: @shade3; }
  [impact >= 9276][impact < 22226]    { polygon-fill: @shade4; }
  [impact >= 22226][impact < 78573]   { polygon-fill: @shade5; }
  [impact >= 78573][impact < 159002]  {  polygon-fill: @shade6;}
 //  image-filters:agg-stack-blur(1,1);

}

#impact[zoom > 10] { line-width: 1; } 


#impact[zoom > 6][zoom <14] {
  [impact =  0]      { polygon-fill: @shade1; polygon-opacity:0; line-opacity: 0;}
  [impact >  0][impact < 100]    { polygon-fill: @shade1; polygon-opacity:0; line-opacity: 0;}
  polygon-opacity: 0.43;
  line-opacity: 0.43;
} 

#flood_pretty {
  raster-opacity:0.95;
  image-filters:agg-stack-blur(1,1);
}

#countries[ADMIN!='Nigeria'] {
	polygon-fill:black;
    opacity: 0.5;
}

#countries[ADMIN='Nigeria'] {
  line-color: white;
  line-width: 5;
  line-opacity: 1;
  ::shape {
    opacity: 0;
  }
}
