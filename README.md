# Longform (Version 0.6.0)

A framework for generating dynamic longform HTML in R

## Description

Automated reporting benefits from long-form templated text. The conditional ruleset for creating even a simple report can be expansive. This package provides a set of tools for standardizing this logic.

## Installation

```R
install.packages("devtools")
devtools::install_github("https://github.com/polymathematic/Longform")
```

## Functions

- **CreateConditionalFragment()** Create a fragment based on a boolean condition
- **CreateCountFragment()** Create a fragment based on the count of values in a vector
- **CreateDocument()** Compile items into a document
- **CreateHeader()** Add a header tag
- **CreateImageTag()** Add an image tag
- **CreateParagraph()** Compile sentences into a paragraph
- **CreateSentence()** Compile fragments into a sentence
- **CreateSeriesFragment()** Create a simple conjunctive series
- **CreateTimestamp()** Add a timestamp
- **CreateUnorderedList()** Create an unordered list
- **CreateURLTag()** Create a URL (href) tag
- **implode()** Implode a list of strings

