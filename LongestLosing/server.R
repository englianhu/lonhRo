# server.R

# Longest Losing Sequence app is part of the LonhRo collection of R Shiny web apps focused on horse racing datasets and tools. It is free 
# software: you can redistribute it and/or modify it under the terms of the GNU General Public License Version 3 as published by the Free 
# Software Foundation, either version 3 of the License, or (at your option) any later version.

# Longest Losing Sequence and the LonhRo apps are distributed in the hope that they will be useful, but WITHOUT ANY WARRANTY; without even 
# the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

# You should have received a copy of the GNU General Public License along with Foobar.  If not, see <http://www.gnu.org/licenses/>.

# All LonhRo apps can be found in the following GitHub repository: https://github.com/phillc73/lonhRo
# Each app is a new branch of that repository

# Contact phill at starkingdom dot co dot uk with questions or suggestions.


shinyServer(function(input, output) {

  output$text1 <- renderText({ 
    
    paste("Your historical data consists of", input$runs, "runs or events")
    
  })
  
  output$text2 <- renderText({ 

    paste("You have selected a win strike rate of", input$sr,"%")
    
  })
  
  output$text3 <- renderText({ 
    
    win_prob <- 1 - (input$sr/100)
    
    runs <- input$runs
    
    longest_losing <- log(runs) / -log(win_prob)
    
    paste("Your longest expected losing run will be", round(longest_losing ,1))
    
  })
  
}
)
