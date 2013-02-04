#roads-medium {
  [type='motorway'],
  [type='motorway_link'] {
    line-color: @motorway_fill;
  }
  [type='trunk'],
  [type='trunk_link'] {
    line-color: @trunk_line;
  }
  [type='primary'] { line-color: @primary_line; }
  [type='secondary'] { line-color: @secondary_line; }
  [type='tertiary'] { line-color: @standard_line; }
  [zoom=9],[zoom=10] {
    [type='motorway'],[type='trunk'] { line-width: 0.6; }
    [type='primary'],[type='secondary'],
    [type='motorway_link'],[type='trunk_link'] { line-width: 0.1; }
  }
  [zoom=11] {
    [type='motorway'],[type='trunk'] { line-width: 1.3; }
    [type='primary'],[type='secondary'],
    [type='motorway_link'],[type='trunk_link'] { line-width: 0.3; }
  }
  [zoom=12] {
    [type='motorway'],[type='trunk'] { line-width: 1.8; }
    [type='primary'],[type='secondary'],
    [type='motorway_link'],[type='trunk_link'] { line-width: 0.45; }
  }
  [zoom=13] {
    [type='motorway'],[type='trunk'] { line-width: 2.5; }
    [type='primary'],[type='secondary'],
    [type='motorway_link'],[type='trunk_link'] { line-width: 0.6; }
  }
  [zoom=14] {
    [type='motorway'],[type='trunk'] { line-width: 4; }
    [type='primary'],[type='secondary'],
    [type='motorway_link'],[type='trunk_link'] { line-width: 1.0; }
  }
  [zoom=15] {
    [type='motorway'],[type='trunk'] { line-width: 6; }
    [type='primary'],[type='secondary'],
    [type='motorway_link'],[type='trunk_link'] { line-width: 1.2; }
  }
}

#motorway-labels[type='motorway'][zoom>9] {
  text-face-name:@sans;
  text-name:"[name]";
  text-fill:white;
}

#motorway-labels[type='trunk'][zoom>9] {
  text-face-name:@sans;
  text-name:"[name]";
  text-fill:white;
}
 
#motorway-labels[type='motorway'][zoom>9],
#motorway-labels[type='trunk'][zoom>9] {
  text-placement:line;
  text-min-distance:60;
  text-min-padding: 45;
  text-size:12;
  text-min-distance:120;
  text-avoid-edges: true;
  [zoom=11] {
    text-dy:8;
    text-size:12;
  }
  [zoom=12] {
    text-dy:9;
    text-min-distance:80;
    text-size:12;
  }
  [zoom=13] {
    text-dy:9;
    text-size:13;
    text-dy:12;
  }
  [zoom=14] {
    text-dy:12;
    text-size:14;
	text-dy:13;
  }
  [zoom=15] {
    text-size:14;
	text-dy:16;
  }
}

#mainroad-labels[type='primary'][zoom>12] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:line;
  text-dy:6;
  text-fill:white;
  text-min-distance:300;
  text-avoid-edges: true;
  text-size:12;
  [zoom=14] {
    text-size:11;
  }
  [zoom=15] {
    text-size:11;
  }
}

#shields[zoom>=10][ref_len<=3] {
  [highway='motorway'] {
    shield-face-name: @sans;
    shield-fill: #333;
    shield-name: "[ref]";
    shield-placement: line;
    shield-opacity: 1;
    shield-text-dy: 1;
    shield-text-dx: 0.2;
    shield-halo-radius: 0;
    shield-min-padding: 165;
    shield-avoid-edges: true;
    shield-spacing:150;
    shield-min-distance: 50;
    shield-file: url("resources/interstate_shield_small.png");
    [type="CA"]{
      shield-file: url("resources/ca_shield_small.png");
    }
    [type="SR"]{
      shield-file: url("resources/ca_shield_small.png");
      shield-fill: #333;
    }
    [type="US"]{
      shield-file: url("resources/us_shield_small.png");
      shield-text-dx: 1;
      shield-text-dy: 0;
    }
    [ref_len>=3]{
      shield-text-dx:0;
      shield-file: url("resources/interstate_shield_wide.png");
      [type="CA"]{
        shield-file: url("resources/ca_shield_wide.png");
      }
      [type="SR"]{
        shield-file: url("resources/ca_shield_wide.png");
      }
      [type="US"]{
        shield-file: url("resources/us_shield_wide.png");
      }
    }
    [zoom<=12] {
      shield-min-distance: 50;
    }
    [zoom>12] {
      shield-min-distance: 40;
    }
    [zoom>=14] {
      shield-min-padding: 150;
      shield-min-distance: 60;
    }
  }
}