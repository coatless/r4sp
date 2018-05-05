# Set a default seed for reproducibility
set.seed(1337)

# Truncate output to four digits
options(digits = 4)

# Setup knitr options
knitr::opts_chunk$set(
  cache = TRUE,         # Store all executed code and results to speed up build time
  comment = "#>",       # Change how the output result is shown to users
  collapse = TRUE,      # Make the output result appear inline
  fig.show = "hold",    # Plots appear at _end_ of code chunks
  fig.align = "center", # Centerify the graphics (for now)
  fig.width = 6,        # Set default to 6 inches from 7
  fig.asp = 0.618       # Constant aspect ratio
)
