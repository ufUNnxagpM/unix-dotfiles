Hints.characters = "arstdqwfpgzxcvb";
Hints.style('border: solid 3px #552a48; color:#efe1eb; background: initial; background-color: #552a48; font-family: sans-serif;');
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
mapkey(',', 'Close current tab and move left', function() {
	// Move tab to left and close to right (achieves desired affect)
    	RUNTIME('moveTab', {
        	step: -1
    	});
	RUNTIME("closeTab");
});

// Hints
map("F", "af");

// Reload page
map("R", ">_r");

// Turn off surfingkeys
map('<Ctrl-i>', '<Alt-s>'); // hotkey must be one keystroke with/without modifier, it can not be a sequence of keystrokes like `gg`.

// unmap alt toggles
unmap("<Alt-i>");
unmap("<Alt-s>");
unmap("<Alt-p>");
unmap("<Alt-m>");
iunmap("<Alt-b>");
iunmap("<Alt-f>");
iunmap("<Alt-w>");
iunmap("<Alt-d>");

// set theme
settings.theme = `
.sk_theme {
    font-family: Input Sans Condensed, Charcoal, sans-serif;
    font-size: 10pt;
    background: #282828;
    color: #ebdbb2;
}
.sk_theme tbody {
    color: #b8bb26;
}
.sk_theme input {
    color: #d9dce0;
}
.sk_theme .url {
    color: #98971a;
}
.sk_theme .annotation {
    color: #b16286;
}
.sk_theme .omnibar_highlight {
    color: #ebdbb2;
}
.sk_theme #sk_omnibarSearchResult ul li:nth-child(odd) {
    background: #282828;
}
.sk_theme #sk_omnibarSearchResult ul li.focused {
    background: #d3869b;
}
#sk_status, #sk_find {
    font-size: 20pt;
}`;
