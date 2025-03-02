# Check if the package is installed, install only if missing
if (!requireNamespace("TrialEmulation", quietly = TRUE)) {
  install.packages("TrialEmulation", repos = "https://cloud.r-project.org/")
}

# Load the TrialEmulation package
library(TrialEmulation)

# Generate the dummy dataset
data_censored <- simulate_data(
  sample_size = 1000,  
  event_rate = 0.1,    
  censoring_rate = 0.05, 
  treatment_effect = 0.5, 
  covariate_effects = c(0.2, -0.1)
)

# Save the dataset as CSV
write.csv(data_censored, "data_censored.csv", row.names = FALSE)

print("Dataset saved as data_censored.csv")
