# PA7.R
# Chatoya Wells-Fowler
# 7/5/2026
# Computing basic statistics in R

# --------------------------------------------------------
# Define the parameters of the normal distribution
# --------------------------------------------------------

mean_value <- 10
variance <- 2
sd_value <- sqrt(variance)

# --------------------------------------------------------
# Problem 1
# Find the probability that a blade of grass is
# between 9.5 mm and 11 mm.
# --------------------------------------------------------

# Calculate cumulative probability at the lower bound
lower_prob <- pnorm(9.5,
                    mean = mean_value,
                    sd = sd_value)

# Calculate cumulative probability at the upper bound
upper_prob <- pnorm(11,
                    mean = mean_value,
                    sd = sd_value)

# Find the probability between the two values
probability <- upper_prob - lower_prob

# Display the probability
cat("Probability blade is between 9.5 and 11 mm:",
    probability, "\n\n")

# --------------------------------------------------------
# Problem 2
# Calculate the standardized values (Z-scores)
# --------------------------------------------------------

# Standardize the lower blade length
z_lower <- (9.5 - mean_value) / sd_value

# Standardize the upper blade length
z_upper <- (11 - mean_value) / sd_value

# Display the Z-scores
cat("Z-score for 9.5 mm:",
    z_lower, "\n")

cat("Z-score for 11 mm:",
    z_upper, "\n\n")

# --------------------------------------------------------
# Verify the probability using the standard normal
# distribution and the calculated Z-scores.
# --------------------------------------------------------

# Calculate cumulative probability for lower Z-score
lower_zprob <- pnorm(z_lower)

# Calculate cumulative probability for upper Z-score
upper_zprob <- pnorm(z_upper)

# Find the probability between the two Z-scores
z_probability <- upper_zprob - lower_zprob

# Display the probability
cat("Probability from Z-scores for 9.5 and 11 mm:",
    z_probability, "\n\n")


# --------------------------------------------------------
# Problem 3
# Find the blade length below the shortest 2.5%
# --------------------------------------------------------

# Calculate the 2.5th percentile
shortest_length <- qnorm(0.025,
                         mean = mean_value,
                         sd = sd_value)

# Display the blade length
cat("Blade length below shortest 2.5%:",
    shortest_length,
    "mm\n\n")

# --------------------------------------------------------
# Problem 4
# Standardize the blade length found above.
# --------------------------------------------------------

# Calculate the corresponding Z-score
z_shortest <- (shortest_length - mean_value) /
  sd_value

# Display the Z-score
cat("Z-score of shortest 2.5% blade:",
    z_shortest, "\n")
