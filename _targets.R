library(targets)
suppressPackageStartupMessages(library(dplyr))
library(readr)
library(tarchetypes)
library(ggplot2)

cnf <- config::get() # načte konfiguraci - výchozí je z config.yml

tar_source() # načte všechny skripty z adresáře  R - tam by měly být jen funkce

# Define the targets

list(

  # Načíst data -------------------------------------------------------------

  tar_file(data1_file, file.path(cnf$data_dir, "values.csv")),
  tar_file(data2_file, file.path(cnf$data_dir, "scores.csv")),
  tar_target(data1, read_csv(data1_file)), # F2 na funkci, otevře se její definice
  tar_target(data2, read_csv(data2_file)),

  # Počty -------------------------------------------------------------------

  tar_target(mean_data1, calculate_mean(data1)),
  tar_target(sum_data1, calculate_sum(data1)),

  ## Průměry -----------------------------------------------------------------

  tar_target(mean_data2, calculate_mean_score(data2)),
  tar_target(sum_data2, calculate_sum_score(data2)),

  # Grafy -------------------------------------------------------------------

  tar_target(plot, plot_combined(mean_data1, mean_data2)),
  tar_target(plot_simple, ggplot(mean_data1) +
               geom_point(aes(group, mean_value), colour = "blue")),
  tar_file(plot_png, save_plot(plot, "plots/plot_combined.png", 4)),
  tar_quarto(report, "report.qmd")
)
