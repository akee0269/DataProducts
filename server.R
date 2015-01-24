library(shiny)
library(datasets)
data(mtcars)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
	predictModel <- reactive({
	fit <- lm(mpg ~ factor(am) + wt + carb + vs, data=mtcars)
	predict(fit, data.frame(am=input$autman, wt=(input$weight/1000), carb=input$carburetors, vs=input$VS))
	})
	output$value <- renderText({
	input$goButton
	isolate(predictModel())})

})