

### Add
library(ggplot2)
library(tidyr)

d1 <- rnorm(1000,0,1)
b1 <- rnorm(1000,0,1)
c1 <- rnorm(1000,0,1)
e1 <- rnorm(1000,0,1)

# Combine into a dataframe
df <- data.frame(d1 = d1, b1 = b1, c1 = c1, e1 = e1)

# Pivot to long format for ggplot
df_long <- pivot_longer(df, cols = everything(), names_to = "variable", values_to = "value")

# Compare distributions with overlaid histograms
ggplot(df_long, aes(x = value, fill = variable)) +
  geom_histogram(alpha = 0.5, position = "identity", bins = 30) +
  labs(title = "Distribution Comparison", x = "Value", y = "Count", fill = "Variable") +
  theme_minimal()

