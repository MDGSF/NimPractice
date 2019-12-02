var
  g = @['x', 'y']
  h = @['1', '2', '3']

g.add('z')
echo g, " ", g.len

h.add(g)
echo h, " ", h.len

