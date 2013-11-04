if defined?(PryDebugger)
  # to install theme, run: `gem install pry-theme`
  Pry.config.theme = "railscasts"
  
  Pry.commands.alias_command 'c', 'continue'
  Pry.commands.alias_command 's', 'step'
  Pry.commands.alias_command 'n', 'next'
  Pry.commands.alias_command 'f', 'finish'
end
