# spec_commands.vim

This plugin is meant to return spec/test running strings to be used by *other* vim plugins to actually run those specs/tests somewhere (like iterm or tmux).

## Example use

I use this with the [tslime vim plugin](https://github.com/jgdavey/tslime.vim) to send spec commands to tmux.

```
nnoremap <Leader>stsl :call Send_to_Tmux(SpringRSpecLine() . "\n")<CR>
nnoremap <Leader>stm :call Send_to_Tmux(Minitest() . "\n")<CR>
```

Available functions are:

1. `SpringRSpecLine()`: run `spring rspec` with current file and current line
2. `SpringRSpec()`: run `spring rspec` with current file
3. `RSpecLine()`: run `rspec` with current file and current line
4. `RSpec()`: run `rspec` with current file
5. `Minitest()`: run `ruby -Ilib:test` with current file
