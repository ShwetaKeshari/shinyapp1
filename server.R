

library(shiny)

# Data about the Emissions over a period from 1999 to 2008 for different counties

# Create a data frame from the data extracted

#a<-getURL("https://docs.google.com/spreadsheets/d/1HVtOusW48PJ-P-cD8LlkmztmY6CUJ2_2ApCvIumIBpk/pub?gid=0&single=true&output=csv")
#d<-read.csv(textConnection(a))

loadGoogSheet <- function(URL, key = NULL,
                          stringsAsFactors = default.stringsAsFactors(), na.strings = "NA",
                          colClasses = NA, blank.lines.skip = TRUE
) 
{
  
  #.try_require("RCurl")
  library(googlesheets)
  require("RCurl")
  if (missing(URL) & !is.null(key)) 
    URL = paste(https://docs.google.com/spreadsheets/d/1HVtOusW48PJ-P-cD8LlkmztmY6CUJ2_2ApCvIumIBpk/pub?gid=0&single=true&output=csv",key, "&single=TRUE&gid=0", "&output=csv", sep = "")
  s = RCurl::getURLContent(URL)
  foo = textConnection(s)
  b = read.csv(foo,
               stringsAsFactors = stringsAsFactors,
               na.strings = na.strings,
               colClasses = colClasses,
               blank.lines.skip = blank.lines.skip
  )
  close(foo)
  return(b)
  
}


#d<-read.csv(emission,sep=",",colnames=c("Baltimore","Los Angeles"))

# Define a server for the Shiny app
shinyServer(function(input, output) {
 
  
 
  
  # Make the bar plot for the total Emission from Baltimore City and Los Angeles city from 1999 to 2008.
  output$Emissions <- renderPlot({
    
    
   # a<-c(47103.19,26968.79,22939.78,32135.48)
    #b<-c(3274.180,2453.916,3091.354,1862.282)
    #d<-data.frame(a,b)
    #names(d)<-c("Baltimore","Los Angeles")
    
    
    
     barplot(b[,input$region],
            
          main=input$region,
          col="red",
           ylab="Total Amount of PM2.5 emitted, in tons",
           xlab="Year")
    axis(1,c(1:4),c(1999,2002,2004,2008))
    })
})
  