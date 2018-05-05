
# R Programming Done Wrong
The motivation behind this chapter is to provide a reference guide to the more
common mistakes when writing _R_ code. 

## Beginners Luck


### Checking for Equality vs. Assignment

The most common error by far that affects programmers is making an assignment
when trying to check for equality (and vice versa)

```r
# Assigning in `if`
if(x = 42) { cat("Life!") }
## Error: unexpected '=' in "if(x ="   

# Correct
if(x == 42) { cat("Life!") } 
```

```r
# Equality Check instead of Assignment
x == 42
## No Error, but prints `TRUE` or `FALSE`

# Correct
x = 42
```

### Missing object

```r
x
Error: object 'x' not found

# Correct
x = 1
x
```

### `if` vectorization usage

As emphasis on vectorization grows, there is a tendency to compare two vectors
using the default `if()` instead of `ifelse()`

```r
x = 1:5
y = 2:6
if(x > y) { TRUE } else { FALSE }
## Warning messages: 
## In if (x > y) { : the condition has length > 1 and only the first element will be used

# Correct, if element-wise comparison required
ifelse(x > y, TRUE, FALSE)

# Correct, if totality-comparison requested
if(all(x > y)) { TRUE } else { FALSE }
```

### Vector Recycling

Sometimes the length of vectors are not equal or the data does not divide evenly
or oddly when perform a vectorized computation.

```r
x = 1:5
y = 2:3

x + y
## Warning message: 
## In x + y : longer object length is not a multiple 
## of shorter object length

# Correct
x = 1:4
y = 2:3
x + y   
# Repeats y twice 
# 1 + 2, 2 + 3, 3 + 2, 4 + 3
```

## Omitting Symbols

### Mismatched curly brackets `{}`, parentheses `()`, or brackets `[]`

Often it is ideal to use parentheses or curly
brackets for order of operations, though this sometimes causes a mismatch. A
mismatch may also be present with the brackets subset operator `[]`

```r
2*(x + y))
## Error: unexpected ')' in "2*(x + y))"

2*{x + y}}
## Error: unexpected '}' in "2*{x + y}}"

x]1
## Error: unexpected ']' in "x]"

# Corrected
2*((x + y))

2*{{x + y}}

x[1]
```

### No Multiplication Symbol

When working on computations, sometimes we just "slip" and opt not to write a
multiplication sign thinking the interpreter can understand the context. 


```r
2x+4
## Error: unexpected symbol in "2x"

# Correct
2*x + 4
```

### Manual Data Entry

Sometimes it's easier as we'll see next week to manually enter data. 
The issue with this is sometimes you forget simple things like a `,`.


```r
c(1, 2 3, 4)
## Error: unexpected numeric constant in "c(1,2 3"

# Correct
c(1, 2, 3, 4)
```


### Strings in character values

At times, there may come a need to place a quotation inside of a string. To do
this, requires using an escape character `\` or using `''` instead. 

```r
"toad"princess"
## Error: unexpected symbol in ""toad"princess"

# Corrected
"toad\"princess"
'toad"princess'
```

## Special Values

### Handling Missing Value Operations

The `NA` character indicates the presence of a missing value. 
These missing values can play havoc with computations.

```r
x = c(1,NA,2)
3 + x
# No Error, but: [1]  4 NA  5

sum(x)
# No Error, but: [1] NA

# Corrected
1 + na.omit(x)    # Deletes NA
sum(x, na.rm = T) # Removes NA inside function
```

### Finiteness of Values

R can have some funky finiteness problems due to how `NA` values are created.

```r
x = c(NA,-Inf, Inf ,NaN)
is.na(x)
# No error, but: [1] TRUE FALSE FALSE TRUE

is.infinite(x)
# No error, but: [1] FALSE TRUE TRUE FALSE

# Correct
is.finite(x)
# [1] FALSE FALSE FALSE FALSE
```
