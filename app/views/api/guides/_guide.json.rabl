attributes :name, :way_name, :way_desc
child concert_steps: :concert_steps do
  extends 'api/concerts/concert'
end
