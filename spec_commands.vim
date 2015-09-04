" Don't try to load if we don't have Ruby support.
if !has("ruby")
  finish
endif

function RspecLine()
  return :ruby SpecCommands.rspec_line
endfunction
" command! RunItermSpec :ruby ITerm.rspec
" command! RunItermSpecLine :ruby ITerm.rspec_line
"
" command! RunItermSpringSpec :ruby ITerm.spring_rspec
" command! RunItermSpringSpecLine :ruby ITerm.spring_rspec_line

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
