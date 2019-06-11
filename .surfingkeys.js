Hints.characters = "arstdqwfpgzxcvb";
settings.smartCase = true;

// Save keys
map(">_h", "h")
map(">_n", "n")
map(">_e", "e")
map(">_k", "k")
map(">_N", "N")
map(">_r", "r")
map(">_k", "k")

// Scrolling
map("n", "h");
map("i", "l");
map("e", "j");
map("u", "k");

// Page up/down
map("j", ">_e");
map("J", "gg");
map("h", "d");
map("H", "G");

// Open URL
map("o", "go");

// Text find
map("k", ">_n");
map("K", "N");

// History back/forward
map("N", "S");
map("I", "D");


// Tab navigation
// Tab buffer
map("b", "T");
// Tab left/right
map("l", "E");
map("y", "R");
// Tab close
map("d", "x");
map("D", "X");
map(".", "x");
mapkey(',', '#3Close current tab', function() {
	settings.focusAfterClosed = "left";
	RUNTIME("closeTab");
});

// Hints
map("F", "af");

// Reload page
map("R", ">_r");
