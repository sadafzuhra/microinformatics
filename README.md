# Microinformatics

This project is part of my **Internship 2024** in the field of bioinformatics and data science. It demonstrates data wrangling, exploratory analysis, statistical testing, and visualization workflows using **R**.

---

## 📌 Project Overview

The microinformatics project performs data-driven investigation in a bioinformatics / epidemiological context. The main goals are:

* Cleaning and preprocessing raw datasets (Excel/CSV).
* Exploratory Data Analysis (EDA) and summary statistics.
* Data visualization (plots, seasonal trends, maps).
* Statistical testing (ANOVA, correlations).
* Generating reproducible reports in **RMarkdown** (HTML/PDF).



---

## 📂 Repository Structure

```
microinformatics/
├── data/                       # Raw datasets (Excel, CSV)
├── scripts/                    # R scripts for analysis
│   ├── script_1.R
│   ├── script_2.R
│   ├── script_corr.R
│   ├── anova_1.R
│   ├── maps.R
│   └── ...
├── analysis/                    # RMarkdown reports
│   ├── data_wrangling.Rmd
│   ├── data_wrangling.html/pdf
│   ├── statistics.Rmd
│   ├── statistics.html/pdf
│   └── ...
├── plots/                       # Saved visual outputs
│   ├── Rplot01.png
│   ├── season.png
│   ├── my_plot.png
│   └── ...
├── microinformatics.Rproj       # RStudio project file
├── .gitignore
├── LICENSE
└── README.md
```

---

## 🚀 Getting Started

1. **Clone the repository**

   ```bash
   git clone https://github.com/sadafzuhra/microinformatics.git
   cd microinformatics
   ```

2. **Open the R Project in RStudio**

   ```bash
   Rstudio -> Open Project -> microinformatics.Rproj
   ```

3. **Install required R packages**

   ```r
   install.packages(c("tidyverse", "readxl", "sf", "ggplot2", "knitr", "rmarkdown"))
   ```

4. **Run scripts or render reports**

   ```r
   source("scripts/script_1.R")
   rmarkdown::render("analysis/data_wrangling.Rmd")
   ```

---

## 🔬 Workflow

1. **Data Wrangling** → Import, clean, preprocess data.
2. **Exploratory Data Analysis** → Summary statistics, trends.
3. **Visualization** → Seasonal plots, correlations, geographic maps.
4. **Statistical Testing** → ANOVA, group comparisons.
5. **Reporting** → RMarkdown reports compiled to HTML/PDF.

---

## 📊 Results & Outputs

* **Seasonal trend plots** (`season.png`)
* **Correlation plots** (`script_corr.R`)
* **Zone-based mapping outputs** (`maps.R`)
* **ANOVA results and statistical summaries**
* **Final reports in HTML/PDF**

---

## 📦 Dependencies

* `tidyverse`
* `readxl`
* `sf` (for mapping)
* `ggplot2`
* `knitr`, `rmarkdown`

*(Check scripts for additional packages.)*

---

## 🔮 Future Work

* Automating the full pipeline with a master script.
* Adding interactive dashboards (`shiny`, `plotly`).
* Extending statistical models with machine learning.
* Improving code comments and documentation.

---

## 🙌 Acknowledgments

This project was developed as part of my **Bioinformatice and Data Science Internship 2024** under the guidance of **\[Haseeb Raza]** in **\[Microinformatics]**.

For queries or feedback:
📧 [sadafzuhra788@gmail.com](mailto:sadafzuhra788@gmail.com)

---

## 📜 License

This project is licensed under the **MIT License** – see the [LICENSE](LICENSE) file for details.

---

