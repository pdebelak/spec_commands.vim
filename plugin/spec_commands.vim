function RSpec()
  return "rspec " . CurrentFile()
endfunction

function RSpecLine()
  return "rspec " . CurrentFileAndLine()
endfunction

function SpringRSpec()
  return "spring rspec " . CurrentFile()
endfunction

function SpringRSpecLine()
  return "spring rspec " . CurrentFileAndLine()
endfunction

function Minitest()
  return "ruby -Ilib:test " . CurrentFile()
endfunction

function MinitestLine()
  return "ruby -Ilib:test " . CurrentFile() . " -n /" . CurrentTestName() . "/"
endfunction

function MixTestLine()
  return "mix test "  CurrentFileAndLine()
endfunction

function MixTest()
  return "mix test " . CurrentFile()
endfunction

function CurrentFile()
  return expand("%:p")
endfunction

function CurrentFileAndLine()
  return CurrentFile() . ":" . line(".")
endfunction

function CurrentTestName()
  execute "mark `"
  execute "normal! ?def test\<CR>"
  let a:testname = split(getline("."))[1]
  execute "normal! ``"
  return a:testname
endfunction
