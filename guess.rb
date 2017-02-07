require 'telegram_bot'

bot = TelegramBot.new(token: '305444758:AAEZZGH6C4YwjAN5tfHFjap1L4oooOsVczE')
bot.get_updates(fail_silently: true) do |message|
  puts "@#{message.from.username}: #{message.text}"
  command = message.get_command_for(bot)
  
  message.reply do |reply|
    case command
    when /hola/i
      reply.text = "¡Hola, #{message.from.first_name}! ¿De que pais eres?"
    when /adios/i
      reply.text = "¡Adios amigo #{message.from.first_name}!"
    when /venezuela/i
      reply.text = "¿Entonces te gustan las arepas?"
    when /italia/i
      reply.text = "¿Imagino que adoras la pizza?"
    when /colombia/i
      reply.text = "¿has comido la bandeja paisa hoy?"
    when /peru/i
      reply.text = "¿Qué es mejor el ceviche o el arroz chaufa?"
    when /perú/i
      reply.text = "¿Qué es mejor el ceviche o el arroz chaufa?"
    else
      reply.text = "#{message.from.first_name}, yo no tengo idea de lo que signifique '#{command.inspect}'. Soy un bot muy ignorante hasta ahora."
    end
    puts "Enviando #{reply.text.inspect} a @#{message.from.username}"
    reply.send_with(bot)
  end
  
  end
