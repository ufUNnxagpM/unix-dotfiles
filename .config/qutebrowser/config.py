#qutebrowser settings
c.url.start_pages = "https://www.matte.fyi"
c.editor.command = ["vim", "-f", "{}"]
c.downloads.position = "bottom"
c.downloads.location.directory = "~/Downloads/"
#c.content.user_stylesheets = ["/home/machu/solarized-everything-css/css/solarized-all-sites-dark.css"]
#c.scrolling.smooth = True
c.completion.height = "20%"
c.tabs.background = True
c.tabs.last_close = "close"
c.hints.chars = "arstdhneio"
c.fonts.tabs = "12pt tamzenforpowerline"
c.url.searchengines = {"DEFAULT": "https://duckduckgo.com/?q={}", "y": "https://www.youtube.com/results?search_query={}&search=Search", "g": "https://www.google.com/#q{}", "r": "https://www.reddit.com/search?q={}"}
c.content.host_blocking.lists =  ["https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts"]

#Color
c.colors.tabs.odd.fg = "white"
c.colors.tabs.odd.bg = "black"
c.colors.tabs.even.fg = "white"
c.colors.tabs.even.bg = "black"
c.colors.tabs.selected.odd.fg = "white"
c.colors.tabs.selected.odd.bg = "grey"
c.colors.tabs.selected.even.fg = "white"
c.colors.tabs.selected.even.bg = "grey"

#Keybinds
#Open/Close
config.bind('O', 'set-cmd-text :open {url:pretty}')
config.bind('t', 'set-cmd-text -s :open -t')
config.bind('T', 'set-cmd-text :open -t {url:pretty}')
config.bind('W', 'set-cmd-text -s :open -w')
config.bind('F', 'hint all tab-bg')
config.bind('d', 'tab-close')
config.bind('.', 'tab-close')
config.bind('D', 'tab-close -o')
config.bind(',', 'tab-close -o')

#Tab Motion
config.bind('b', 'set-cmd-text -s :buffer')
config.bind('y', 'tab-next')
config.bind('l', 'tab-prev')

#Direction
config.bind('u', 'scroll up')
config.bind('e', 'scroll down')
config.bind('i', 'scroll left')
config.bind('n', 'scroll right')

config.bind('w', 'scroll up')
config.bind('r', 'scroll down')
config.bind('a', 'scroll left')
config.bind('s', 'scroll right')

#Time Motion
config.bind('N', 'back')
config.bind('I', 'forward')

#Page Motion
config.bind('j', 'scroll-page 0 -1')
config.bind('h', 'scroll-page 0 1')

#yank
config.bind(';', 'yank')

#spawn youtube link into mpv
config.bind('Y', 'hint links spawn mpv {hint-url}')

#spawn chromium for link
config.bind('C', 'spawn chromium {url}')

#Reload
config.bind('R', 'reload -f')
