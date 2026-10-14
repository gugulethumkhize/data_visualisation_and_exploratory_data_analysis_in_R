# Data Visualisation and Exploratory Data Analysis in R


**Problem**

This project applies data visualisation techniques in R to explore and analyse 
diamond prices, unemployment trends, and life expectancy. 
The aim is to investigate relationships between diamond carat weight and price, 
examine changes in unemployment over time, and explore the relationship between 
GDP per capita and life expectancy across countries and continents.

The project uses static, interactive, and animated visualisations to identify 
patterns, examine trends, and communicate findings.



**Dataset**

The project uses three datasets: `diamonds`, `economics`, and `gapminder`.

The `diamonds` dataset contains information on diamond characteristics, 
including carat weight, price, and cut quality. It is found in the `ggplot2` 
R package and is used to investigate relationships between diamond 
characteristics and prices.

The `economics` data dataset contains economic indicators over time, including 
dates and unemployment figures. It is found in the `ggplot2` R package and is 
used to examine changes in unemployment over time.

The `gapminder` dataset contains information on countries, continents, 
GDP per capita, population, life expectancy, and year. It is provided by the 
separate `gapminder` R package and is used to create an animated visualisation 
exploring the relationship between GDP per capita and life expectancy over time.

The `diamonds` and `economics` datasets can be accessed directly 
through `ggplot2`. The `gapminder` dataset requires the separate `gapminder` 
package. These datasets do not need to be uploaded separately to the repository.

To access the datasets, install and load the required packages in R:

```r
install.packages(c("ggplot2", "gapminder"))

library(ggplot2)
library(gapminder)

data("diamonds", package = "ggplot2")
data("economics", package = "ggplot2")
data("gapminder", package = "gapminder")
```



**Methods**

- Inspected and explored datasets to understand their variables and 
characteristics.

- Created scatter plots to investigate the relationship between diamond carat 
weight and price.

- Used colour to distinguish diamond cut categories and compare price patterns.

- Added regression lines to explore relationships between variables.

- Used facets to compare categories within the data.

- Customised plot titles, axis labels, legends, colours, and themes to improve 
visual presentation.

- Created time-series line graphs to investigate unemployment trends over time.

- Used `plotly` to create interactive visualisations from `ggplot2` plots.

- Applied `gganimate` to animate unemployment trends over time.

- Created an animated scatter plot using `gapminder` to explore the relationship 
between GDP per capita and life expectancy over time.

- Used continent to distinguish groups, population to represent point size, and 
year to animate changes in the life expectancy visualisation.

- Applied exploratory data analysis and visualisation techniques to identify 
patterns and communicate findings.



**Tools**

- R and RStudio

- `ggplot2` — static visualisations and the `diamonds` and `economics` datasets

- `gapminder` — the dataset used for the life expectancy animation

- `plotly` — interactive visualisations

- `gganimate` — animated visualisations

- Base R



**Key Insights and Outcomes**

The project demonstrates practical skills in data visualisation, exploratory 
data analysis, plot customisation, and the interpretation of patterns in data.

The diamond analysis explores how carat weight relates to price and how prices 
vary across diamond cut categories.

The economics analysis uses time-series visualisation to examine changes in 
unemployment over time.

The life expectancy animation explores how GDP per capita and life expectancy 
vary across countries and continents over time, while also showing differences 
in population.

Static, interactive, and animated visualisations are used to present the 
analyses and make patterns easier to interpret.



**Project Outputs**

- R Markdown file containing the analysis and visualisation code

- HTML report presenting the project output

- Static visualisations of diamond prices and unemployment trends

- Interactive visualisations created using `plotly`

- Animated unemployment and life expectancy visualisations



**Reproducibility**

The `diamonds` and `economics` datasets are included in the `ggplot2` package. 
The `gapminder` dataset is provided by the separate `gapminder` package.

Install the required packages in R:

```r
install.packages(c("ggplot2", "plotly", "gganimate", "gapminder"))
```

Load the packages and datasets before running the analysis:

```r
library(ggplot2)
library(plotly)
library(gganimate)
library(gapminder)

data("diamonds", package = "ggplot2")
data("economics", package = "ggplot2")
data("gapminder", package = "gapminder")
```

The analysis can then be run in RStudio, and the R Markdown file can be knitted 
to HTML to produce the report.






