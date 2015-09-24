library(shiny)

# Data about the Emissions over a period from 1999 to 2008 for different counties

# Create a data frame from the data extracted


# Define a server for the Shiny app
shinyServer(function(input, output) {
  
  
  
  
  # Make the bar plot for the total Emission from Baltimore City and Los Angeles city from 1999 to 2008.
  output$Emissions <- renderPlot({
    
  
    
    if (input$region=="Baltimore"){barplot(height = c(47103.19,26968.79,22939.78,32135.48),
                                           
                                           main=input$region,
                                           col="red",
                                           ylab="Total Amount of PM2.5 emitted, in tons",
                                           xlab="Year")
      axis(1,c(1:4),c(1999,2002,2004,2008))}
    else if 
    (input$region=="Los Angeles"){barplot(height = c(3274.180,2453.916,3091.354,1862.282),
                                        
                                        main=input$region,
                                        col="red",
                                        ylab="Total Amount of PM2.5 emitted, in tons",
                                        xlab="Year")
      axis(1,c(1:4),c(1999,2002,2004,2008))}
    
  })
})
