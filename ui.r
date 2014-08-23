library(shiny)
shinyUI(fluidPage(
  # Application title
  headerPanel("Titanic : Your chances of survival"),
  sidebarPanel(
    h3('Your travel details please:'),
    radioButtons("Class", "Class:",
                 c("1st" = "1st",
                   "2nd" = "2nd",
                   "3rd" = "3rd",
                   "Crew" = "Crew")),
    radioButtons("Sex", "Gender:",
                 c("Male" = "Male",
                   "Female" = "Female")),
    radioButtons("Age", "Age Group:",
                 c("Child" = "Child",
                   "Adult" = "Adult")),
    submitButton('Submit'),
    h5("Meanwhile on the iceberg!"),
    img(src = "Titanic-Reloaded.jpg")
    ),
  mainPanel(
    h3('May the odds be with you!'),
    h4('Your Class'),
    verbatimTextOutput("oClass"),
    h4('Your gender'),
    verbatimTextOutput("oSex"),
    h4('Your age group'),
    verbatimTextOutput("oAge"),
    h4('Chances of survival for you in your category %'),
    verbatimTextOutput("survival")
  ),
  column(8,
         includeHTML("Documentation.html")
  )
))