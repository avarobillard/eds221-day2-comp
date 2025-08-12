# Making vectors

# character vector 
dogs <- c("teddy", "khora", "waffle", "banjo")
class(dogs)
typeof(dogs)

# numeric vector 
weights <- c(50, 55, 25, 35)
class(weights)
typeof(weights)

# integer vector
dog_age <- c(5L, 6L, 1L, 7L)
class(dog_age)
typeof(dog_age)
is.numeric(dog_age)

# What happens when we combine classes?
dog_info <- c("teddy", 50, 5L)
typeof(dog_info)
class(dog_info)
is.character(dog_info)

# Named elements
dog_food <- c(teddy = "purina", khora = "alpo", waffle = "fancy feast", banjo = "blue diamond")
class(dog_food)
dog_food

# Accessing bits of vectors
dog_food[2]
dog_food["khora"]
dog_food[1:3]

# warm-up to for loops
i <- 4
dog_food[i]

# Key points: 
# index by position
# can define positions with variables

# overwrite data- vector elements are mutable 
dog_food[1] <- "BURRITOS!"
dog_food

# Matrices
fish_size <- matrix(c(0.8, 1.2, 0.4, 0.9),
                    ncol = 2, nrow = 2,
                    byrow = FALSE)
fish_size
typeof(fish_size)
class(fish_size)

# get element
fish_size[1,2]
# get column
fish_size[,2]
# get row
fish_size[1,]

# Lists
# not same type or length!
urchins <- list("blue", c(1,2,3), c("a cat", "a dog"), 5L)
urchins

# Access data in a list
# indexing into vector
urchins[2]
# indexing into elements of vectors
urchins[[2]]

# Naming list
# meets requirements of a df
tacos <- list(toppings = c("onion", "cilantro", "guacamole"),
              filling = c("beans", "meat", "veggies"),
              price = c(6.75, 8.25, 9.50))
tacos
tacos[[2]]
tacos$filling

# Data frames
# list containing vectors of the same length
# expect row by row to be individual observations
fruit <- data.frame(type = c("apple", "banana", "peach"),
                    mass = c(130, 195, 150))
fruit
class(fruit)

# access elements in a df
fruit[1,2]
fruit[1,]
fruit[,2]

# mutable 
fruit[2,1] <- "pineapple"
fruit

# Select multiple elements
x <- 1:10
x
x[c(3,1,5)]
x[c(1,1,1)]
x[c(1.2,5.4,7.2)]

# put into order
x[order(x)]

# exclude elements with negative integers- can't mix neg and pos
x[-10]
x[-c(2,4,6,8,10)]

# logical vectors- data filtering!
x[c(TRUE, FALSE, FALSE, TRUE, FALSE, TRUE, FALSE, FALSE, TRUE, FALSE)]
x[x>3]

# Subsetting and assigning multiple values- aka removing rows
x <- 1:5
x[c(1,2)] <- 2:3

# replace all but first element
x[-1] <- 4:1

# Subset rows in data frames based on conditions (logical subsetting)
# ask for gears col with value 5 and all rows
mtcars[mtcars$gear == 5,]

# multiple columns 
mtcars[mtcars$gear == 5 & mtcars$cyl == 4, ]

# using subset function
subset(mtcars, gear == 5 & cyl == 4, )

# Removing columns from data frames
df <- data.frame(x = 1:3, y = 3:1, z = letters[1:3])
df
df$z <- NULL
df[c("x", "y")]
df[setdiff(names(df), "z")]
