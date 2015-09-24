
library(shiny)

# Rely on the the Emissions over a period from 1999 to 2008 for different counties
# package (which generally comes preloaded).



# Define the overall UI
shinyUI(
  
  # Use a fluid Bootstrap layout
  fluidPage(    
    
    # Give the page a title
    titlePanel(h3("Comparison of Total Emission from PM2.5 by City from 1999 to 2008")),
    
    # Generate a row with a sidebar
    sidebarLayout(   
      
      # Define the sidebar with one input
      sidebarPanel(
        selectInput("region", "Choose the City:", 
                    choices=c("Baltimore","Los Angeles"))# choose between two city whose total emission over time we would like to see.
        
        
      ),
      
      # Create a spot for the barplot
      mainPanel("Have total emissions from PM2.5 decreased in the Baltimore City, Maryland and Los Angeles from 1999 to 2008? " ,
                "The overall total emisssion from Baltimore City and Los Angeles city has decreased from 1990 to 2008 (over 10 year period) ",
                
                
                
                 plotOutput("Emissions"), 
                
                
                "Note: Fine particulate matter (PM2.5) is an ambient air pollutant for which there is strong evidence that it is harmful to human health. In the United States, the Environmental Protection Agency (EPA) is tasked with setting national ambient air quality standards for fine PM and for tracking the emissions of this pollutant into the atmosphere. Approximatly every 3 years, the EPA releases its database on emissions of PM2.5."
      
                
                
                
                )
      
    )
  )
)