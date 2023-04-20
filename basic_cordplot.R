# Basic plot


# Loading data ------------------------------------------------------------

library(readr)
library(dplyr)
library(janitor)

string_db_data <- read_tsv("string_interactions_short.tsv") |> clean_names()
gal1_interaction_data <- as_tibble(string_db_data) |> 
  rename(node1 = number_node1) |> select(node1, node2)

# Interaction Matrix

adjan_matrix <- with(gal1_interaction_data, table(node1, node2))


# Graph -------------------------------------------------------------------

library(circlize)
library(ggplot2)

p <- chordDiagram(adjan_matrix, transparency = 0.5)







