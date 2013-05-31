attributes :artist, :desc, :venue
node(:time_start) { |concert| concert.time_start.to_i }
node(:time_end) { |concert| concert.time_end.to_i }
