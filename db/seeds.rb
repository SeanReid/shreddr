User.destroy_all
# Relationship.destroy_all
Message.destroy_all

jonah = User.create name: "Donnie", location: "Wallstreet", photo: "http://i.imgur.com/8woHzvj.png"
leo = User.create name: "Wolf", location: "I'm on a boat!", photo: "http://onthescreenreviews.files.wordpress.com/2014/01/unnamed.gif"
matt = User.create name: "All_Right", location: "Wallstreet", photo: "http://www.joblo.com/video/media/screenshot/the-wolf-of-wall-street-raving-spot.jpg"

Message.create user: jonah, status: "Check out my profile pic lol"
Message.create user: leo, status: "Totes just got arrested!"
Message.create user: jonah, status: "#GotCaughtSlippin"
# Relationship.create user: jonah, follower_id: leo.id
# Relationship.create user: jonah, follower_id: matt.id
# Relationship.create user: matt, follower_id: leo.id
# Relationship.create user: leo, follower_id: matt.id
