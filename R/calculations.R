calculate_mean <- function(data) {
  data %>%
    group_by(group) %>%
    summarize(mean_value = mean(value))
}

calculate_sum <- function(data) {
  data %>%
    group_by(group) %>%
    summarize(sum_value = sum(value))
}

calculate_mean_score <- function(data) {
  data %>%
    group_by(group) %>%
    summarize(mean_score = mean(score))
}

calculate_sum_score <- function(data) {
  data %>%
    group_by(group) %>%
    summarize(sum_score = sum(score))
}
