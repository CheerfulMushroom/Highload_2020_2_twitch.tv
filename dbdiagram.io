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
}

Table games {
  id int [pk, increment]
  name varchar
  cover_image_link varchar
}

Table streams {
  id int [pk, increment]
  channel_id int [ref: - channels.id]
  name varchar 
  game int [ref: < games.id]
  started_at datetime
  unique_viewers_count int
  online_viewers_count int
  
  link_1080_60 varchar
  link_720_60 varchar
  link_720_30 varchar
  link_480_30 varchar
  link_360_30 varchar
  link_160_30 varchar
}

Table vods {
  id int [pk, increment]
  channel_id int [ref: > channels.id]
  name varchar 
  game int [ref: < games.id]
  started_at datetime
  ended_at datetime
  unique_viewers_count int

  link_1080_60 varchar
  link_720_60 varchar
  link_720_30 varchar
  link_480_30 varchar
  link_360_30 varchar
  link_160_30 varchar
}