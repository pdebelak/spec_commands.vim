# spec_commands.vim

This plugin is meant to return spec/test running strings to be used by *other* vim plugins to actually run those specs/tests somewhere (like iterm or tmux).

## Avalaible functions

1. `SpringRSpec()`: run `spring rspec` with current file
2. `SpringRSpecLine()`: run `spring rspec` with current file and current line
3. `RSpec()`: run `rspec` with current file
4. `RSpecLine()`: run `rspec` with current file and current line
5. `Minitest()`: run `ruby -Ilib:test` with current file
6. `MinitestLine()`: run `ruby -Ilib:test` with current file and closest test defined with `def test_etc...` syntax

## Example use

I use this with the [tslime vim plugin](https://github.com/jgdavey/tslime.vim) to send spec commands to tmux.

```
nnoremap <Leader>stsl :call Send_to_Tmux(SpringRSpecLine() . "\n")<CR>
nnoremap <Leader>stm :call Send_to_Tmux(Minitest() . "\n")<CR>
```
