Message.destroy_all
Channel.destroy_all
User.destroy_all
puts "Cleared database."

User.create!(email: "chatadmin@lailo.io", password: "lailoapp")
User.create!(email: "chatuser@lailo.io", password: "lailoapp")
puts "Created users."

Channel.create!(name: "libra")
Channel.create!(name: "gemini")
Channel.create!(name: "aquarius")
puts "Creaed channels"

5.times do
  Message.create!(channel_id: Channel.first.id, user_id: User.first.id, content: "This is a great message.")
  Message.create!(channel_id: Channel.second.id, user_id: User.first.id, content: "This is a great message.")
  Message.create!(channel_id: Channel.third.id, user_id: User.first.id, content: "This is a great message.")
end

5.times do
  Message.create!(channel_id: Channel.first.id, user_id: User.second.id, content: "This is a great message.")
  Message.create!(channel_id: Channel.second.id, user_id: User.second.id, content: "This is a great message.")
  Message.create!(channel_id: Channel.third.id, user_id: User.second.id, content: "This is a great message.")
end
puts "Created messages."
