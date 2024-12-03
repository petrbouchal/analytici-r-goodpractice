
plot_combined <- function(data1, data2) {
  combined_data <- inner_join(data1, data2, by = "group")
  ggplot(combined_data, aes(x = mean_value, y = mean_score, color = group)) +
    geom_point() +
    labs(title = "Mean Value vs Mean Score by Group")
}

save_plot <- function(plot, path, width = 3) {

  ggsave(filename = "plots/plot_combined.png", plot = plot, width = width)
  "plots/plot_combined.png"

}

