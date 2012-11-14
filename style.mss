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

#impact {
  opacity:0.7;
  line-color: white;
  line-width: 2;
  line-opacity: 0;
  polygon-fill: @shade0;
  polygon-opacity:10;
  [impact =  0]      { polygon-fill: @shade1; polygon-opacity:0; line-color:white;}
  [impact >= 1][impact < 2242]      { polygon-fill: @shade2; }
  [impact >= 2242][impact < 9276]     { polygon-fill: @shade3; }
  [impact >= 9276][impact < 22226]    { polygon-fill: @shade4; }
  [impact >= 22226][impact < 78573]   { polygon-fill: @shade5; }
  [impact >= 78573][impact < 159002]  { polygon-fill: @shade6; }       
  [zoom > 10] { line-width: 1; } 
  
  [Status = 'Flooded']{ polygon-fill: #0C1EA9; }
}

#countries[ADMIN!='Nigeria'] {
	polygon-fill:black;
    opacity: 0.5;
}
#countries[ADMIN='Nigeria'] {
  line-color: gray;
  line-width: 2;
  ::shape {
    opacity: 0;
  }
}