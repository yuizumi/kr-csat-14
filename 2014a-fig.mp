verbatimtex
%&latex
\documentclass{article}
\usepackage{newtxtext,newtxmath}
\begin{document}
etex;

beginfig(15);
  u := 1.1in;

  z0 = (0,u); z1 = (0,0); z2 = (2u,0); z3 = (2u,u);
  z4 = (2/5u,2/5u); z5 = (2/5u,0); z6 = (6/5u,0); z7 = (6/5u,2/5u);
  z8 = (2u,2/5u); z9 = (u,u);

  pickup pencircle scaled 0.8pt;

  fill z1{dir +90}..{dir 0}z9--cycle withcolor (.9 white);
  fill z9{dir -90}..{dir 0}z2--cycle withcolor (.9 white);

  draw z0--z1--z2--z3--cycle;
  draw z5--z4--z7--z6;
  draw z1{dir +90}..{dir 0}z9--cycle withpen (pencircle scaled 0.4pt);
  draw z9{dir -90}..{dir 0}z2--cycle withpen (pencircle scaled 0.4pt);

  draw z3--z7--z8 dashed evenly scaled 0.75;

  label.ulft(btex $\mathrm{A_1}$ etex, z0);
  label.llft(btex $\mathrm{B_1}$ etex, z1);
  label.lrt (btex $\mathrm{C_1}$ etex, z2);
  label.urt (btex $\mathrm{D_1}$ etex, z3);
  label.ulft(btex $\mathrm{A_2}$ etex, z4 + (1.5bp,-1.5bp));
  label.bot (btex $\mathrm{B_2}$ etex, z5 + (4bp,-1.5bp));
  label.bot (btex $\mathrm{C_2}$ etex, z6 + (0,-1.5bp));
  label.llft(btex $\mathrm{D_2}$ etex, z7 + (1bp,0));
  label.rt  (btex $\mathrm{E_1}$ etex, z8 + (2bp,0));

  pickup pencircle scaled 0.4pt;
  picture q[];

  q01 := thelabel.lft(btex $1$ etex, 0.5[z0,z1]+(-.03u,0)); draw q01;
  draw z0..{dir -90}(urcorner bbox(q01)-(4bp,0));
  draw (lrcorner bbox(q01)-(4bp,0)){dir -90}..z1;
  q03 := thelabel.top(btex $\mathstrut 2$ etex, 0.5[z0,z3]+(0,+.02u)); draw q03;
  draw z0..{dir 0}(0.5[ulcorner bbox(q03),llcorner bbox(q03)]);
  draw (0.5[urcorner bbox(q03),lrcorner bbox(q03)]){dir 0}..z3;

  q15 := thelabel.bot(btex $\mathstrut x$ etex, 0.5[z1,z5]+(0,+.01u)); draw q15;
  draw z1..{dir 0}(0.5[ulcorner bbox(q15),llcorner bbox(q15)]);
  draw (0.5[urcorner bbox(q15),lrcorner bbox(q15)]){dir 0}..z5;
  q56 := thelabel.bot(btex $\mathstrut 2x$ etex, 0.5[z5,z6]); draw q56;
  draw z5..{dir 0}(0.5[ulcorner bbox(q56),llcorner bbox(q56)]);
  draw (0.5[urcorner bbox(q56),lrcorner bbox(q56)]){dir 0}..z6;
  q62 := thelabel.bot(btex $\mathstrut 2-3x$ etex, 0.5[z6,z2]); draw q62;
  draw z6..{dir 0}(0.5[ulcorner bbox(q62),llcorner bbox(q62)]);
  draw (0.5[urcorner bbox(q62),lrcorner bbox(q62)]){dir 0}..z2;

  q45 := thelabel.rt(btex $x$ etex, 0.5[z4,z5]+(+.01u,0)); draw q45;
  draw z4..{dir -90}(ulcorner bbox(q45)+(4bp,0));
  draw (llcorner bbox(q45)+(4bp,0)){dir -90}..z5;
  q82 := thelabel.rt(btex $x$ etex, 0.5[z8,z2]+(+.01u,0)); draw q82;
  draw z8..{dir -90}(ulcorner bbox(q82)+(4bp,0));
  draw (llcorner bbox(q82)+(4bp,0)){dir -90}..z2;
  q38 := thelabel.rt(btex $1-x$ etex, 0.5[z3,z8]+(+.01u,0)); draw q38;
  draw z3..{dir -90}(ulcorner bbox(q38)+(4bp,0));
  draw (llcorner bbox(q38)+(4bp,0)){dir -90}..z8;

  q37 := thelabel.ulft(btex $1$ etex, 0.5[z3,z7]); draw q37;
  draw z3{dir -165}..(0.2[urcorner bbox(q37),lrcorner bbox(q37)]);
  draw (0.8[ulcorner bbox(q37),llcorner bbox(q37)])..{dir -120}z7;

  0.5[x0,x3] = 0.5[x10,x13]; 0.5[x1,x2] = 0.5[x11,x12];
  y10 = y13; y11 = y12;
  z12 = (lrcorner currentpicture);
  z13 = (urcorner currentpicture);
  setbounds currentpicture to (z10--z11--z12--z13--cycle);
endfig;

beginfig(19);
  u := 1/12.5in;

  r := 4 sqrt(5) * u;
  z0 = (8u,r); z1 = z3 - (0,4u); z2 = z3 + (0,4u); z3 = (0,r);
  z4 = (8u,0); z5 = (8u-r,r); z6 = (8u,2r); z7 = (8u+r,r);

  pickup pencircle scaled 0.8pt;
  draw z4..z5..z6..z7..cycle;
  pickup pencircle scaled 0.4pt;
  drawarrow (-3u,0)--(19u,0); label.rt (btex $x$ etex, (19u,0));
  drawarrow (0,-2u)--(0,20u); label.top(btex $z$ etex, (0,20u));
  draw z0--z1 dashed evenly scaled 0.4;
  draw z0--z3 dashed evenly scaled 0.4;
  draw z0--z4 dashed evenly scaled 0.4;
  draw (z3+0.75(0,-u))--(z3+0.75(u,-u))--(z3+0.75(u,0));

  label.llft(btex $\mathrm{O}$ etex, (0,0));
  label.bot(btex $8$ etex, (8u,0));
  dotlabel.urt(btex $\mathstrut\mathrm{C}$ etex, z0);
  dotlabel.llft(btex $\mathstrut\mathrm{Z_1}$ etex, z1);
  dotlabel.ulft(btex $\mathstrut\mathrm{Z_2}$ etex, z2);
  dotlabel.urt(btex $\mathstrut\mathrm{M}$ etex, z3);

  picture q;

  q := thelabel.rt(btex $z$ etex, 0.5[z0,z4] + (1bp,0));
  draw q;
  draw z0..{dir -90}(0.4[ulcorner bbox(q), urcorner bbox(q)]);
  draw z4..{dir +90}(0.4[llcorner bbox(q), lrcorner bbox(q)]);

  draw ((-9/4bp,-3/4bp)--(9/4bp,-3/4bp)) shifted 0.5[z1,z3];
  draw ((-9/4bp,3/4bp)--(9/4bp,3/4bp)) shifted 0.5[z1,z3];
  draw ((-9/4bp,-3/4bp)--(9/4bp,-3/4bp)) shifted 0.5[z2,z3];
  draw ((-9/4bp,3/4bp)--(9/4bp,3/4bp)) shifted 0.5[z2,z3];
endfig;

beginfig(29);
  u := 1/4in;

  pickup pencircle scaled 0.4pt;
  drawarrow (-5u,0)--(6u,0); label.llft(btex $y$ etex, (6u,-2bp));
  drawarrow (0,-4.5u)--(0,4u); label.llft(btex $z$ etex, (-1bp,4u));

  z0 = (4u,4u); z1 = (4u,-4.5u);
  x2 = -5u; y3 = -4.5u; x2 + sqrt(3) * y2 + 8u = x3 + sqrt(3) * y3 + 8u = 0;
  draw fullcircle scaled 4u;
  draw z0--z1; draw z2--z3;

  label.urt(btex $2$ etex, (2u,0));
  label.urt(btex $2$ etex, (0,2u));
  label.ulft(btex $4$ etex, (4u,0));
  label.ulft(btex $y=4$ etex, z1 + (-1bp,0));
  label.ulft(btex $y+\sqrt{3}z+8=0$ etex, z2 + (2.25u,0));

  z4 = (-3/2u, -u); z5 = (5/4u, u);
  x6 = x7 = 4u; y6 = y4; y7 = y5;
  z8 = whatever[z2,z3]; (z8-z4) rotated 90 = whatever * (z3-z2);
  z9 = whatever[z2,z3]; (z9-z5) rotated 90 = whatever * (z3-z2);
  z10 = z4 + 2 * (z9-z8);

  draw z4--z6 dashed evenly scaled .5;
  draw z5--z7 dashed evenly scaled .5;
  draw z4--z8 dashed evenly scaled .5;
  draw z5--z9 dashed evenly scaled .5;
  draw z4--z10 dashed evenly scaled .5;

  path p[]; picture q[];
  q0 := thelabel.ulft(btex $\mathstrut r$ etex, 0.5[z4,z5] + (0,1bp)); draw q0;
  draw z4{dir 70}..(0.25[llcorner bbox(q0), ulcorner bbox(q0)]);
  draw (0.75[lrcorner bbox(q0), urcorner bbox(q0)])..z5{dir 5};

  p1 := (z4 + (0.7u,0)){dir 80}..(z4 + 0.7u * unitvector(z5 - z4)); 
  p2 := (z4 + (0.7u,0)){dir -80}..(z4 + 0.7u * unitvector(z10 - z4));
  q1 := thelabel.rt(btex $\theta$ etex, z4 + (0.8u * unitvector(z5 - z4) yscaled 0.7));
  q2 := thelabel.lrt(btex $\frac{\pi}{6}$ etex, (3/8u, y4));
  p3 := (0.5[llcorner(q2), ulcorner(q2)])--(point .5 of p2);
  draw p1; draw q1; draw p2; draw q2; draw p3;

  p0 := ((1,0)--(1,1)--(0,1)) scaled .2u;
  draw (p0 rotated +90 shifted z6);
  draw (p0 rotated +90 shifted z7);
  draw (p0 rotated -30 shifted z8);
  draw (p0 rotated -30 shifted z9);
  z11 = whatever[z5,z9] = whatever[z4,z10];
  draw (p0 rotated -30 shifted z11);

  label.top (btex $\mathrm{P}$ etex, z4 + (-2bp,1bp));
  label.ulft(btex $\mathrm{Q}$ etex, z5);
  label.rt  (btex $\mathrm{P_1}$ etex, z6);
  label.rt  (btex $\mathrm{Q_1}$ etex, z7);
  label.bot (btex $\mathrm{P_2}$ etex, z8);
  label.bot (btex $\mathrm{Q_2}$ etex, z9);

  pickup pencircle scaled 1.2pt;
  drawarrow z4--z5; drawarrow z6--z7; drawarrow z8--z9;
endfig;

end.
