# Install AdhereR if not installed
if (!requireNamespace("AdhereR", quietly = TRUE)) {
  install.packages("AdhereR")
}

# Load the library
library(AdhereR)

# Check if it loaded correctly
head(med.events)

# Save the dataset as a CSV file
write.csv(med.events, "med_events.csv", row.names = FALSE)
print("Dataset saved as 'med_events.csv'!")

