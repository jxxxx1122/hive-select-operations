
# Hive Select Operations Project

This project demonstrates Hive's SELECT operations, including filtering, grouping, and sorting. It provides practical examples for analyzing a sample `score` dataset.

## Background

This project is designed to help users understand and practice Hive's SELECT operations, focusing on essential SQL functionalities such as filtering, grouping, and sorting.

## Project Structure

- `scripts/`:
  - `create_table.hql`: Script to create the Hive table `score`.
  - `load_data.hql`: Script to load data from the `data/score.txt` file into the Hive table.
  - `queries.hql`: Script containing various SELECT operations to analyze the `score` dataset.
- `data/`:
  - `score.txt`: Sample dataset with tab-separated values, representing student scores.

## How to Use

1. **Set up Hive Environment**:
   - Ensure Hive is installed and configured properly.
   - Start the Hive shell by typing:
     ```bash
     hive
     ```

2. **Execute Scripts**:
   - **Step 1: Create the `score` table**:
     ```bash
     hive -f scripts/create_table.hql
     ```
   - **Step 2: Load data into the table**:
     ```bash
     hive -f scripts/load_data.hql
     ```
   - **Step 3: Run SELECT queries**:
     ```bash
     hive -f scripts/queries.hql
     ```

## Example Data

The `data/score.txt` file contains sample data with tab-separated values:
```
01	001	80
02	002	90
01	003	85
```

## Example Queries

1. **Filter scores greater than 80**:
   ```sql
   SELECT * FROM score WHERE sscore > 80;
   ```

2. **Group by student ID and calculate average score**:
   ```sql
   SELECT sid, AVG(sscore) AS avg_score FROM score GROUP BY sid;
   ```

## Requirements

- Hive version: 3.1.2 or later
- Hadoop version: 3.2.1 or later
- Java version: 8 or later
- A properly configured Hive environment
