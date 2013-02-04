#neighborhoods[zoom>12] {
  [zoom=13] {
    [population>30000] {
      text-name:"[Name]";
      text-size:14;
      text-face-name: @italic;
      text-fill:white;
      text-min-distance:50;
    }
  }
  [zoom>13]{
    text-name:"[Name]";
    text-face-name: @italic;
    text-fill:white;
    text-min-distance:30;
  }
  [zoom=14] {text-size:16;}    
  [zoom=15] {text-size:17;}
}

#census-places[zoom>9] {
  text-face-name: @italic;
  text-name:"''";
  text-fill:white;
  [name10='Los Angeles'] {text-name:"''";}
  [zoom=10][pop100>150000]{
    text-name:"[name10]";
    [name10='Los Angeles'] {text-name:"''";}
    text-size:12;
  }
  [zoom=11][pop100>125000] {
    text-name:"[name10]";
    [name10='Los Angeles'] {text-name:"''";}
    text-size:14;
  } 
  [zoom=12][pop100>100000] {
    text-name:"[name10]";
    [name10='Los Angeles'] {text-name:"''";}
    text-size:15;
  }
  [zoom=13][pop100>75000] {
    text-name:"[name10]";
    [name10='Los Angeles'] {text-name:"''";}
    text-size:15;
  }
  [zoom>13][pop100>50000]{
    text-name:"[name10]";
    [name10='Los Angeles'] {text-name:"''";}
  }
  [zoom=14] {text-size:17;}
  [zoom=15] {text-size:18;}
} 