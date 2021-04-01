// Figure #4 : Another example of multiple plot
// -----------
// Data
x = linspace(-2,+6,51);
y = 1 ./(1+x.^2);
// Plot
scf(4);
clf(4);
set(gca(),"auto_clear","off")
plot(x,y,'r-');
plot(x,sqrt(y),'b-');
plot(x,y.^2,'k:d');
set(gca(),"auto_clear","on")
set(gca(),"grid",[1 1]);
xtitle("My title", "X axis", "Y axis");

