
--- 
title: "Statistical Programming Methods with R"
description: "Programming notes using R for Statistical Applications"
author: "James Balamuta"
date: "2018-06-18"
knit: bookdown::render_book
site: bookdown::bookdown_site
documentclass: book
bibliography: [book.bib]
biblio-style: apalike
link-citations: yes
url: 'https\://spm.thecoatlessprofessor.com/'
github-repo: coatless/spm
---




# (PART) Preface {-}

# Welcome {-}

Welcome to the Statistical Programming Methods with _R_ textbook. Within this section, we'll
go over the objective of the text, active development disclaimer, ways to contribute,
conventions used, acknowledge those who have made contributions, and specify
the license that the textbook is released under.

## Objective of the Text {-}

The book is meant to be used as primary reference material for developing
statistical code within the _R_ programming language. However, the goal is _not_
to emphasize statistical theory as much as it is to explore underlying computational
topics that power the algorithm. The thought behind this approach is to promote
savviness in programming methods that are useful to approach a wide variety of
analysis that Statisticians are expected to perform.

Presently, the book is used within the class [STAT 385: Statistics Programming
Methods](https://stat.illinois.edu/academics/course-catalog) offered at the [University of Illinois at Urbana-Champaign (UIUC)](https://illinois.edu). 

## Active Development Disclaimer {-}

The contents and structure of this book is under active development. Therefore,
the best way to view the content will be to always access the 
book online rather than a printed copy to be sure you are using the latest version. 
The online version also affords additional features over the traditional PDF copy 
such as a scaling text, variety of font faces, and themed backgrounds. However, 
if you are in need of a local copy, a [**pdf version** is also available
](http://spm.thecoatlessprofessor.com/spm.pdf).

Having said this, please note that the document is likely to contain many errors. 

Your copy of this book was built 2018-06-18.

## Contributing {-}

If you notice any errors, we would be grateful if you would let us know. To let
us know about the errors, there are two options available to you. The first and
subsequently the fastest being if you are familiar with GitHub and know 
RMarkdown, then [make a pull request and fix the issue yourself!
](https://github.com/coatless/spm). Within the online version, there is
even an option to automatically start the pull request by clicking the edit
button in the top-left corner of the text.

![](images/support/edit_button.png)

The second option, that will have a slightly slower resolution time is to
send an email to `balamut2 AT illinois DOT edu` that includes: the error and a
possible revision. Please put in the subject header: `[SPM]`.

##  Rendering Mathematical Formulae {-}

Throughout the book, there will be mathematical symbols used to express the
material. Depending on the version of the book, there are two different render
engines. 

- For the online version, the text uses [MathJax](https://www.mathjax.org/)
to render mathematical notation for the web. In the event the formulae does
not load for a specific chapter, first try to refresh the page. 9 times out of
10 the issue is related to the software library not loading quickly.
- For the pdf version, the text is built using the recommended AMS LaTeX 
symbolic packages. As a result, there should be no issue displaying equations.

An example of a mathematical rendering capabilities would be given as:

\[ a^2 + b^2 = c^2 \]

## R Code Conventions {-}

The code used throughout the book will predominately be `R` code.  To obtain
a copy of [`R`](https://cloud.r-project.org/), go to the
[Comprehensive R Archive Network (CRAN)](https://cloud.r-project.org/)
and download the appropriate installer for your operating system.

When `R` code is displayed it will be typeset using a `monospace` font with 
syntax highlighting enabled to ensure the differentiation of functions,
variables, and so on. For example, the following adds 1 to 1


```r
a = 1L + 1L
a
```

Each code segment may contain actual output from `R`. Such output will appear
in grey font prefixed by `#>`. For example, the output of the above code
segment would look like so:


```
#> [1] 2
```

Alongside the PDF download of the book, you should find the R code used within 
each chapter. 

## Acknowledgements {-}

The text has been developed in the open and has benefited greatly from many
people being able to alert the authors to problematic areas. We are greatful
for the corrections, suggestions, or requests of clarity from the following:

- Your name and website address here!

## License {-}

![This work is licensed under a [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-nc-sa/4.0/).](images/license/cc.png)
