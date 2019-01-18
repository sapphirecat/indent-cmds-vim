# indent-cmds-vim

Indent setting commands for vim.

# Installation

Your favorite plugin manager.

# Commands

    :IndentTab 2    " 1-tab indents with tabstop=2
    :IndentSpace 4  " 4-space indents exclusively
    :IndentMix 4    " Tab/space mixed indents

Controls `tabstop`, `shiftwidth`, `softtabstop`, and `expandtab` options.

# Why though

Through the years, I've edited a _lot_ of files from many authors.  I just
wanted a higher-level interface to matching the indent of the file I'm working
on.

The practicality is waning—communities are settling on specifying an indent
type, which I can put in an autocmd for their files—but it's still convenient
from time to time.

# License

MIT.
