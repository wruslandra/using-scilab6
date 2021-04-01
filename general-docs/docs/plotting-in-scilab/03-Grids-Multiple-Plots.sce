// Figure #3 : Change axis origin and add grid
// -----------
// Data
// x = linspace(-2,6,51);
// y = 1 ./(1+x.^2);


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

// Plot
// scf(3);
// clf(3);
// plot(x,y,'ro-');
set(gca(),"grid",[1 1]);
a = gca(); // get the current axes
// a.x_location = "origin";
// a.y_location = "origin";
// set(gca(),"data_bounds",matrix([-2,6,-0.2,1.2],2,-1));
set(gca(),"data_bounds",matrix([-6,6,-0.1,1.1],2,-1));
// xtitle("My title", "X axis", "Y axis");
