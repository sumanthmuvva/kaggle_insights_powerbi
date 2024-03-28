import pandas as pd
import os

file_path = 'C:\\Users\\muvva\\Desktop\\Infoviz Data\\DatasetVersions.csv'

# Rename the original file to have 'old_' prefix
directory, filename = os.path.split(file_path)
old_file_path = os.path.join(directory, 'old_' + filename)
os.rename(file_path, old_file_path)

# Load the CSV file into a DataFrame from the old file
df = pd.read_csv(old_file_path)

# Sort the DataFrame by DatasetId and VersionNumber (descending) and drop duplicates based on DatasetId
# This will keep the highest VersionNumber (latest version) for each DatasetId
df_cleaned = df.sort_values(by=['DatasetId', 'VersionNumber'], ascending=[True, False]).drop_duplicates(subset='DatasetId')

# Save the cleaned DataFrame back to the original CSV file path
df_cleaned.to_csv(file_path, index=False)
