# ui.R

# Longest Losing Sequence app is part of the LonhRo collection of R Shiny web apps focused on horse racing datasets and tools. It is free 
# software: you can redistribute it and/or modify it under the terms of the GNU General Public License Version 3 as published by the Free 
# Software Foundation, either version 3 of the License, or (at your option) any later version.

# Longest Losing Sequence and the LonhRo apps are distributed in the hope that they will be useful, but WITHOUT ANY WARRANTY; without even 
# the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

# You should have received a copy of the GNU General Public License along with Longest Losing Sequence.  If not, see <http://www.gnu.org/licenses/>.

# All LonhRo apps can be found in the following GitHub repository: https://github.com/phillc73/lonhRo
# Each app is a new branch of that repository

# Contact phill at starkingdom dot co dot uk with questions or suggestions.

shinyUI(fluidPage(

  titlePanel("Longest Losing Sequence"),
  
  sidebarLayout(
    sidebarPanel(
      
      numericInput("runs", 
                   label = "Number of Runs or Events:", 
                   value = 1000, 
                   min = NA, 
                   max = NA,
                   step = NA
                   ),
      
      sliderInput("sr",
                  "Win Strike Rate %:",
                  min = 1,
                  max = 100,
                  step = 1,
                  value = 25
      )
      
    ),
    
    mainPanel(
      helpText("Would you like to know the longest likely losing run of your betting system? On the left input the number of runs or events in your back data and use the slider to choose your historical win strike rate percentage. Below, the longest likely losing bet sequence for this sample size and winning strike rate will be displayed."),

      textOutput("text1"),
      textOutput("text2"),
      textOutput("text3"),
      
    tags$hr(),
    
    helpText("Created with", tags$a(href="http://shiny.rstudio.com/", "Shiny")),
    
    helpText("Source code available on", tags$a(href="https://github.com/phillc73/lonhRo", "GitHub"))
      
     )
    )
))
