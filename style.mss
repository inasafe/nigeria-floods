@shade0: #FFFFFF;
@shade1: #FFFFFF;
@shade2: #FFFFB2;
@shade3: #FECC5C;
@shade4: #FD8D3C;
@shade5: #F03B20;
@shade6: #BD0026;
@shade7: #52514C;

Map {
}

@land: url('images/img-thing10.jpg');

#impact_flood [zoom<11]{
  [Status='Flooded']
    {
    polygon-pattern-file: @land; 
    opacity:.1;
  	}
}

#impact [zoom<11] {
  line-color: white;
  line-width: 2;
  line-opacity: 0.2;
  polygon-fill: @shade0;
  polygon-opacity: 0.43;
  [impact =  0]      { polygon-fill: @shade1; polygon-opacity:0; line-color:white;}
  [impact >= 1][impact < 2242]      { polygon-fill: @shade2;  polygon-opacity: 0.4;}
  [impact >= 2242][impact < 9276]     { polygon-fill: @shade3; }
  [impact >= 9276][impact < 22226]    { polygon-fill: @shade4; }
  [impact >= 22226][impact < 78573]   { polygon-fill: @shade5; }
  [impact >= 78573][impact < 159002]  { polygon-fill: @shade6; }       
  [zoom > 10] { line-width: 1; } 

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
#flood_pretty {
  raster-opacity:1;
}
