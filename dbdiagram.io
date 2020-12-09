Table users {
  id int [pk, increment]
  username varchar
  mail varchar
  password varchar
  avatar_link varchar
  verified boolean
  followers_count int
  created_at datetime
  current_stream_id int [ref: - streams.id]
  stream_key varchar
}

Table streams {
  channel_id int [ref: > users.id]
  id int [pk, increment]
  name varchar 
  started_at datetime
  
  master_playlist varchar
  
  unique_viewers_count int
  online_viewers_count int
}

Table transoders_links {
  stream_key varchar [ref: - users.stream_key]
  transoder_link varchar
}