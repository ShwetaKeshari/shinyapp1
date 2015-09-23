
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
        selectInput("region", "City:", 
                    choices=colnames(d))# choose between two city whose total emission over time we would like to see.
        
    
      ),
      
      # Create a spot for the barplot
      mainPanel("Total Emission from PM2.5 from:",
        plotOutput("Emissions"),"The overall total emisssion from Baltimore City and Los Angeles city has decreased from 1990 to 2008 (over 10 year period) " 
      )
      
    )
  )
)