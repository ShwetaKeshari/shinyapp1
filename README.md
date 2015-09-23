# shinyapp1
Shinny app for Data Products project

####This README file is the supporting documentation giving direction on how to use  this Shiny application.

###Instructions given for this project:

1)Write a shiny application with associated supporting documentation. The documentation should be thought of as whatever a user will need to get started using your application.
2)Deploy the application on Rstudio's shiny server.
3)Share the application link by pasting it into the text box below.
4)Share your server.R and ui.R code on github.



The application must include the following:

*Some form of input (widget: textbox, radio button, checkbox, ...).
*Some operation on the ui input in sever.R.
*Some reactive output displayed as a result of server calculations.


You must also include enough documentation so that a novice user could use your application.
The documentation should be at the Shiny website itself. Do not post to an external link.
The Shiny application in question is entirely up to you. However, if you're having trouble coming up with ideas, you could start from the simple prediction algorithm done in class and build a new algorithm on one of the R datasets packages. Please make the package simple for the end user, so that they don't need a lot of your prerequisite knowledge to evaluate your application. You should emphasize a simple project given the short time frame.

###Description of this Shiny application

The data was taken from the database  known as the National Emissions Inventory (NEI). You can read more information about the NEI at the EPA National Emissions Inventory web site.

####Intro about the Data:

Fine particulate matter (PM2.5) is an ambient air pollutant for which there is strong evidence that it is harmful to human health. In the United States, the Environmental Protection Agency (EPA) is tasked with setting national ambient air quality standards for fine PM and for tracking the emissions of this pollutant into the atmosphere. Approximatly every 3 years, the EPA releases its database on emissions of PM2.5.

Data was downloded from the "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip".

This file contains a data frame with all of the PM2.5 emissions data for 1999, 2002, 2005, and 2008. For each year, the table contains number of tons of PM2.5 emitted from a specific type of source for the entire year. Here are the first few rows.

     fips      SCC Pollutant Emissions  type year
   4  09001 10100401  PM25-PRI    15.714 POINT 1999
   8  09001 10100404  PM25-PRI   234.178 POINT 1999
  12 09001 10100501  PM25-PRI     0.128 POINT 1999
  16 09001 10200401  PM25-PRI     2.036 POINT 1999
  20 09001 10200504  PM25-PRI     0.388 POINT 1999
  24 09001 10200602  PM25-PRI     1.490 POINT 1999

Question of Interest:

Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (fips == "24510") and Los Angeles(fips="06037") from 1999 to 2008? We used the base plotting system to make a plot answering this question.


Procedure:

1) WE downloded the data, subset it according to requirement, Then we aggregated  all the emission for the two different city from 1999 to 2008.

2) We saved the data in a text file after all the tidying up and subsetting  to record the total emission for Baltimore and Los Angeles from 1999, 2002,2004 and 2008.

3) We plotted the barplot of emissions for two city from 1999,2002,2004 and 2008  by choosing the input city.

IN the ui.R we input two city to choose from, (if we want to choose Baltimore, we can see the plot for Baltimore city)

and server.R renders the output plot for that city.


####Directives on how to visualize this Shiny application

