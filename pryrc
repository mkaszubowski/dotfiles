if defined?(PryDebugger)
  # to install theme, run: `gem install pry-theme`
  Pry.config.theme = "railscasts"
  
  Pry.commands.alias_command 'c', 'continue'
  Pry.commands.alias_command 's', 'step'
  Pry.commands.alias_command 'n', 'next'
  Pry.commands.alias_command 'f', 'finish'

  if defined?(Rails)
    Pry.config.prompt = [proc { env }, "     | "]
  end

  def env
    Rails.env.production? ? "\e[1;31m#{Rails.env}\e[0m > " : "#{Rails.env} > "
  end
end
