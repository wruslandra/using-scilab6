// Figure #2: Multiple plot and axis setting
// ----------
// Data
x = linspace(-5.5,5.5,51);
y = 1 ./(1+x.^2);

// Plot
// scf(fig_id) = set the current graphic figure (window)
scf(2);
// clf(fig_id) = Clear or reset or reset a figure or a frame uicontrol.
clf(2);

// Three plots
plot(x,y,'ro-');
plot(x,y.^2,'bs:');
plot(x,x.^2,'gs:');

xlabel(["x axis";"(independent variable)"]);
ylabel("y axis");
title("Functions");
legend(["Functions #1";"Functions #2";"Functions #3"]);

// a=gca() //get the current axes
set(gca(),"data_bounds",matrix([-6,6,-0.1,1.1],2,-1));

