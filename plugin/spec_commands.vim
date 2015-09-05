function RSpec()
  return "rspec " . CurrentFile()
endfunction

function RSpecLine()
  return "rspec " . CurrentFileAndLine()
endfunction

function SpringRSpec()
  return "spring rspec " . CurrentFile()
endfunction

function SpringRspecLine()
  return "spring rspec " . CurrentFileAndLine()
endfunction

function Minitest()
  return "ruby -Ilib:test " . CurrentFile()
endfunction

function CurrentFile()
  return expand("%:p")
endfunction

function CurrentFileAndLine()
  return CurrentFile() . ":" . line(".")
endfunction
