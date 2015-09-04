" Don't try to load if we don't have Ruby support.
if !has("ruby")
  finish
endif

function RSpecLine()
ruby << EOF
  VIM::command("return '#{SpecCommands.rspec_line}'")
EOF
endfunction

function RSpec()
ruby << EOF
  VIM::command("return '#{SpecCommands.rspec}'")
EOF
endfunction

function SpringRSpecLine()
ruby << EOF
  VIM::command("return '#{SpecCommands.spring_rspec_line}'")
EOF
endfunction

function SpringRSpec()
ruby << EOF
  VIM::command("return '#{SpecCommands.spring_rspec}'")
EOF
endfunction

function Minitest()
ruby << EOF
  VIM::command("return '#{SpecCommands.minitest}'")
EOF
endfunction

" most of this code was taken from https://github.com/skwp/vim-iterm-rspec.
" Thanks, Yan!
ruby <<EOF

module SpecCommands

  def self.rspec_line
    rspec(":#{current_line}")
  end

  def self.rspec(options="")
    "rspec #{current_file}#{options}"
  end

  def self.spring_rspec_line
    spring_rspec(":#{current_line}")
  end

  def self.spring_rspec(options="")
    "spring rspec #{current_file}#{options}"
  end

  def self.minitest
    "ruby -Ilib:test #{current_file}"
  end

  private

  def self.current_file
    current_buffer.name
  end

  def self.current_line
    current_buffer.line_number
  end

  def self.current_buffer
    VIM::Buffer.current
  end
end

EOF
