def tankvol(h, d, vt)
  # your code
  r = d / 2.0
  theta = 2 * Math::acos((r - h) / r)
  area_semicircle = (0.5) * (theta - Math::sin(theta)) * r**2
  vol_rest = (area_semicircle * (vt / (Math::PI * r**2 ))).floor
end