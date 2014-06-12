library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Stock Portfolio Simulator"),
  sidebarPanel(
    width=2,
    radioButtons("radio", label = h3("Select your asset:"), choices = list("STI ETF" = "ES3.SI", "Asian Bond ETF" = "A35.SI","Commodities ETF" = "A0W.SI","Permanent Portfolio" = "PP"),selected = "PP"),
    numericInput('ei', 'Equity Component', 34, min = 0, max = 100, step = 1),
    numericInput('bi', 'Bond Component', 33, min = 0, max = 100, step = 1),
    numericInput('ci', 'Commodities Component', 33, min = 0, max = 100, step = 1),
    h4("Do ensure that all components sum to 100%"),
    submitButton('Submit')
    ),
  mainPanel(width=10, plotOutput('diagram', height="800px"))
  )
)

