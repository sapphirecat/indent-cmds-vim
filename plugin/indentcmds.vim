if exists("indentcmds_loaded")
	finish
endif

let indentcmds_loaded = 1

" IndentSpaces({number of spaces}, {tabs})
" Sets indentation parameters to indent/delete some number of spaces at once,
" possibly using or avoiding 8-column tab characters.
" Example: IndentSpaces(2, 1)
" Result: 2-space indents, with no tab characters ever used.
" Example: IndentSpaces(4, 0)
" Result: 4-space indents, with 8-column tabs where allowable.
function IndentSpaces(num, no_mix)
	let &ts = 8
	let &sts = a:num
	let &sw = a:num
	let &et = a:no_mix
endfunction

" IndentTabs({number of spaces})
" Sets indentation parameters to indent/delete 1 tab at once, displaying each
" tab as some number of columns wide.
function IndentTabs(num)
	let &ts = a:num
	let &sts = 0
	let &sw = a:num
	let &et = 0
endfunction

" Command interface to the functions
command -nargs=1 IndentTab call IndentTabs(<args>)
command -nargs=1 IndentSpace call IndentSpaces(<args>, 1)
command -nargs=1 IndentMix call IndentSpaces(<args>, 0)
