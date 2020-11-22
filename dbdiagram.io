Table users {
  id int [pk, increment]
  username varchar
  mail varchar
  password varchar
  avatar_link varchar
}

Table channels {
  id int [pk, increment]
  owner_id int [ref: > users.id]
  name varchar
  verified boolean
  followers_count int
  created_at datetime
  current_stream_id int [ref: - streams.id]
}

Table streams {
  channel_id int [ref: > channels.id]
  id int [pk, increment]
  name varchar 
  game int [ref: < games.id]
  started_at datetime
  
  stream_key varchar
  playlist_link varchar
  
  unique_viewers_count int
  online_viewers_count int
}

Table games {
  id int [pk, increment]
  name varchar
  cover_image_link varchar
}