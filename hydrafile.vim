"let s:example_hydra =
"            \ {
"            \   'name':        'example',
"            \   'title':       'Example hydra',
"            \   'show':        'popup',
"            \   'exit_key':    "q",
"            \   'feed_key':    v:true,
"            \   'foreign_key': v:true,
"            \   'keymap': [
"            \     {
"            \       'name': 'Window',
"            \       'keys': [
"            \         ['s', 'split',                    'split'],
"            \         ['v', 'vsplit',                   'vsplit'],
"            \         ['d', 'close',                    'close'],
"            \         ['o', 'only',                     'only'],
"            \       ]
"            \     },
"            \     {
"            \       'name': 'Move to',
"            \       'keys': [
"            \         ['h', "norm \<C-w>h", '←'],
"            \         ['j', "norm \<C-w>j", '↓'],
"            \         ['k', "norm \<C-w>k", '↑'],
"            \         ['l', "norm \<C-w>l", '→'],
"            \       ]
"            \     },
"            \     {
"            \       'name': 'Buffers',
"            \       'keys': [
"            \         ['b', 'Buffers', "Buffers", 'interactive'],
"            \         ['n', "bn",       "next"],
"            \         ['p', "bp",       "prev"],
"            \         ['e', "enew!",    "empty"],
"            \       ]
"            \     },
"            \   ]
"            \ }

"silent call hydra#hydras#register(s:example_hydra)

"nnoremap <Leader>w :Hydra example<CR>


let s:spellcheck_hydra =
            \ {
            \   'name':        'spellcheck',
            \   'title':       'Spellchecking Mode',
            \   'show':        'popup',
            \   'exit_key':    "q",
            \   'feed_key':    v:true,
            \   'foreign_key': v:true,
            \   'keymap': [
            \     {
            \       'name': 'Moving',
            \       'keys': [
            \         ['l', 'norm ]s',                    'Next'],
            \         ['k', 'norm [s',                   'Prev'],
            \       ]
            \     },
            \     {
            \       'name': 'Act',
            \       'keys': [
            \         ['z', "call Spellfloat()", 'Sugget'],
            \         ['a', "norm zg", 'Mark good'],
            \         ['s', "norm zG", 'Mark bad'],
            \         ['f', "norm zug", 'Undo mark!'],
            \       ]
            \     }
            \   ]
            \ }

silent call hydra#hydras#register(s:spellcheck_hydra)


let s:square_hydra =
            \ {
            \   'name':        'square',
            \   'title':       'Flowchart Mode',
            \   'show':        'popup',
            \   'exit_key':    "q",
            \   'feed_key':    v:true,
            \   'foreign_key': v:true,
            \   'keymap': [
            \     {
            \       'name': 'Settings',
            \       'keys': [
	    \         ['j', 'set virtualedit+=all', 'enable-virtual edit'],
	    \         ['k', 'set virtualedit-=all', 'disable-virtual edit'],
            \         ['l', 'norm \<C-v>', 'CTRL+V=Visual-block'],
            \       ]
            \     },
            \     {
            \       'name': 'Squares',
            \       'keys': [
            \         ['z', "norm +o", 'Unlabeled'],
            \         ['x', "norm +O", 'Labeled'],
            \         ['c', 'norm +c','Fill with label'],
            \       ]
            \     },
            \     {
            \       'name': 'Lines',
            \       'keys': [
            \         ['s', "norm +>", ' V-H>'],
            \         ['w', "norm ++>", '<V-H>'],
            \         ['d', "norm +^", ' H-V^'],
            \         ['e', "norm ++^", '^H-V^'],
            \       ]
            \     }
	    \   ]
            \ }

silent call hydra#hydras#register(s:square_hydra)
