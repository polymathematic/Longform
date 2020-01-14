# Longform (Version 0.6.0)

A framework for generating dynamic longform HTML in R

## Description

Automated reporting benefits from long-form templated text such as Rmarkdown.  This package provides a set of tools for generating dynamic markdown in cases where the final structure of the document cannot be known in advance.

## Installation

```R
install.packages("devtools")
devtools::install_github("polymathematic/Longform")
```

## Functions

- **CreateConditionalFragment()** Create a fragment based on a boolean condition (Deprecated)
- **CreateCountFragment()** Create a fragment based on the count of values in a vector (Deprecated)
- **CreateDocument()** Compile items into a document (Deprecated)
- **CreateHeader()** Add a header tag (Deprecated)
- **CreateImageTag()** Add an image tag (Deprecated)
- **CreateParagraph()** Compile sentences into a paragraph (Deprecated)
- **CreateSentence()** Compile fragments into a sentence (Deprecated)
- **CreateSeriesFragment()** Create a simple conjunctive series (Deprecated)
- **CreateTimestamp()** Add a timestamp (Deprecated)
- **CreateUnorderedList()** Create an unordered list (Deprecated)
- **CreateURLTag()** Create a URL (href) tag (Deprecated)
- **emphasis()** Add emphasis
- **eval_meta()** Parse and evaluate metadata within an Rmarkdown document
- **first_up()** Capitalize the first letter in a string
- **fragment_conditional()** Create a fragment based on one or more boolean conditions
- **fragment_count()** Create a count fragment based on an integer value and singular/plural units
- **fragment_series()** Create a simple conjunctive series
- **header_tag()** Add a header tag
- **image_tag()** Add an image tag
- **implode()** Implode a list of strings
- **knit_to_html()** Knit a document to an HTML character string
- **link_tag()** Add a link tag
- **ordered_list()** Create an ordered list
- **unordered_list()** Create an unordered list

