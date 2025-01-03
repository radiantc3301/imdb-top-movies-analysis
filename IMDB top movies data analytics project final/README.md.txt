# IMDb Top Movies Analysis Project

## Project Overview

This project analyzes IMDb's top movies to uncover interesting trends and insights. It involves data cleaning, querying, exploratory data analysis (EDA), and visualization using Power BI and Python.

## Key Features

- **Data Cleaning**: Used Python (Pandas) to clean and preprocess the dataset.
- **SQL Queries**: Grouped data by genre, director, and actors, and performed union operations for detailed insights.
- **Exploratory Data Analysis (EDA)**: Created insightful visualizations like boxplots, scatter plots, and network graphs.
- **Power BI Dashboard**: An interactive dashboard with drill-down capabilities to explore the data.

## Tools and Technologies

- **Python**: Data manipulation and EDA (Pandas, Matplotlib, NetworkX).
- **SQL**: Data querying for genre, director, and actor insights.
- **Power BI**: Dashboard creation and data visualization.

## File Structure

imdb-top-movies-analysis/
├── data/
│   ├── cleaned dataset.csv      # Cleaned dataset 
│   └── raw dataset.csv          # Original dataset
├── scripts/
│   ├── data_cleaning.ipynb         # Jupyter Notebook for data manipulation
│   ├── sql_queries.sql          # SQL queries file
│   └── data_analysis.ipynb       # Jupyter Notebook for EDA
├── visualizations/
│   ├── rating_boxplot_by_genre.png       # Boxplot of ratings by genre
│   ├── rating_vs_gross_scatter_plot.png      # Scatter plot: Rating vs Gross
│   ├── rating_vs_votes_scatter_plot.png      # Scatter plot: Rating vs Votes
│   ├── rating_vs_metascore_scatter_plot.png  # Scatter plot: Rating vs Metascore
│   ├── rating_vs_duration_scatter_plot.png   # Scatter plot: Rating vs Time duration
│   └── genre_network_graph_threshold_15.png        # Network graph of genre pairings with a minimum threshold of 15 instances
│   └── rating_gross_metascore_runtime_year_votes_heatmap.png      # Heatmap representing correlations between parameters 
├── dashboard/
│   ├── imdb_top_movies_project - Power BI.pbix  # Power BI dashboard file
│   └── powerBI_dashboard.pdf   # PDF of the dashboard

## How to Use
1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/imdb-top-movies-analysis.git