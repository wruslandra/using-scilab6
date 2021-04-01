// Figure #5 : Semilogy plot
// -----------
// Data
// iter = linspace(0,10,11);
x = linspace(-10,+10, 11); // Decibel

// err = 10.^(-iter);
// err = 10.^(-x);
y = (10)^(x/20); // Amplitude

// DECIBEL TO AMPLITUDE CONVERSION
// db=20log10(A)
// A = power(10, (db/20))

// Plot
scf(5);
clf(5);

// plot2d("nl", iter, err, style=2);
plot2d("nl", x, y, style=2);
p = get("hdl");
p.children.mark_mode = "on";
p.children.mark_style = 9;
p.children.thickness = 3;
p.children.mark_foreground = 2;
xtitle("Small Decibel - Semilog Plot ", "Decibel (dB) linear", "Log Plot - Amplitude Ratio");
// set(gca(),"grid",[-1 1]);
set(gca(),"grid",[1 1]);
