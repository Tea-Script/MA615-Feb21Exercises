### tribbles

library(tidyverse)

tribble(
  ~colA, ~colB,
  "a",   1,
  "b",   2,
  "c",   3
)

# tribble will create a list column if the value in any cell is
# not a scalar
a <- tribble(
  ~x,  ~y,
  "a", 1:3,
  "b", 4:6
)

a

is.tibble(a)













a[1,1]







a[1,2]
a[[1,2]]
a[[1,2]][2]


b <- tribble(
  ~x, ~y, ~z,
  "a", 1, 1:3,
  "b", 2, 4:6
  )


is.tibble(b)

is.tribble(b)

b[[2,3]]

b[[2,3]][2]

b$z

b$x

