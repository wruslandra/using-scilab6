// 01-Basic-Plot.sce
// wruslan@fuj-ubuntu-1404-lts:~$ date
// Sat Apr 16 11:18:14 MYT 2016
// wruslan@fuj-ubuntu-1404-lts:~$ uname -a
// Linux fuj-ubuntu-1404-lts 3.13.0-85-generic #129-Ubuntu SMP Thu Mar 17 20:50:41 UTC 2016 i686 i686 i686 GNU/Linux

// Close all opened figures and clear workspace
// xdel deletes the graphics windows whose numbers are included in the vector win_nums or the current graphics window if no argument is given.
// winsid is used to get the list of graphics windows as a vector of windows numbers.
// clear is Remove items from workspace, freeing up system memory
// clc() clears all input and output from the Console.
	xdel(winsid());
	clear;
	clc;
// Figure #1: Basic plot with LaTex annotations
// ----------

// Data
x = linspace(-5,5,51);
y = 1 ./(1+x.^2);

// Plot
	scf(1);
	clf(1);
	plot(x,y,'o-b');

xlabel("$-5\le x\le 5$","fontsize",4,"color","red");
ylabel("$y(x)=\frac{1}{1+x^2}$","fontsize",4,"color","red");
title("Runge function (#Points = "+string(length(x))+").","color","red","fontsize",4);
legend("Function evaluation");



