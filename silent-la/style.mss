@motorway_fill: white;
@trunk_line: white;
@primary_line: white;
@secondary_line: white;
@standard_line: white; 

@sans: "BentonGothic-Medium Medium", "DejaVu Sans Condensed";
@italic: "BentonGothic-RegularItalic Medium", "DejaVu Sans Condensed";

@black: #000000;
@dark_gray: #7f7f7f;
@light_gray: #afadad;

Map { 
  background-color: @dark_gray;
}

#state {
  polygon-fill: @black;
}

#la {
  line-color: @light_gray;
  line-width: 1;
  line-dasharray: 3,2;
}