library(shiny)
library(markdown)

shinyUI(navbarPage("How Far will It Go in (MPG) Lets Play Prediction Game",
                   tabPanel("Predictor",
                            sidebarLayout(
                              sidebarPanel(
                                h3('Details about the Car'),
                                numericInput('wt', 'Weight (in 1000 lbs)', 0.5, min=0.5, max=10, step=0.1),
                                sliderInput('hp', 'Input the Horsepower', 50,  min=50, max=500, step=10),
                                radioButtons('cyl', 'No of Cylinders', c('4' = '4', '6' = '6', '8' = '8')),
                                radioButtons('am', 'Automatic or Manual', c('Automatic' = '0', 'Manual' = '1')),
                                submitButton('Ready To Go')
                              ),
                              
                              mainPanel(
                                h4('Deatils about the Application'),
                                p('The application is designed to predict the mileage that can be expected from the car based on the specified attributes as those informations will be required to run the application:'),
                                tags$ul(
                                  tags$li(' What is the weight of the car(in 1000 lbs)'),
                                  tags$li('What is the horsepower of the car'),
                                  tags$li('How many cylinders are in the car (4, 6 or 8 )'),
                                  tags$li('What type of transmission does the car have, is it Automatic or Manual)')
                                ),
                                
                                h4('SOP, Standard Operating Procedure for Application'),
                                tags$ul(
                                  tags$li('Be familiar with the information about the car.'),
                                  tags$li('Once information inputted, please press Ready to Go Button.'),
                                  tags$li('The expected value will be displayed in The Magic Box.')
                                ),
                                
                                h4('The Magic Box'),
                                verbatimTextOutput('mpg')
                              )
                            )),
                   tabPanel("About",
                            mainPanel(
                              includeMarkdown("README.md")
                            ))
))

        