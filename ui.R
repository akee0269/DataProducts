library(shiny)

shinyUI(fluidPage(

  titlePanel("Motor Trend Car Road Tests"),

  sidebarLayout(position="right",
    sidebarPanel(
      helpText("Enter values for predicting miles per gallon"),

	numericInput("autman",
		label = "Enter 0 for automatic and 1 for manual transmission",
		0, min=0, max=1, step=1),
		
	numericInput("weight",
		label = "Enter value for weight",
		2500, min=1000, max=5000, step=100),
	
	numericInput("carburetors",
		label = "Enter value for number of carburetors",
		0, min=0, max=8, step=1),
	
	numericInput("VS",
		label = "Enter 0 for V-engine and 1 for S-engine",
		0, min=0, max=1, step=1),

	actionButton("goButton", "Submit")
	
	),

    mainPanel(
	h5("Use this application to predict miles per gallon of a car based
	on automatic vs. manual transmission in your car, the weight of your
	car in pounds, number of carburetors and V vs S engine"),
	
	p("The efficiency of your car (in miles per gallon) based on your inputs is:"),
	tableOutput("value"),
	br(),
	p(span("mtcars", style = "color:blue"), "is a dataset in R which contains
	data for 32 automobiles (1973 to 1974 models)."),
	p("This prediction algorithm uses four variables to predict the output
	(miles per gallon) for your car based on the mtcars dataset."),
	p("The variables are:"),
	p("  - Automatic vs. Manual Engine"),
	p("  - Weight of your car in pounds"),
	p("  - Number of carburetors in your car"),
	p("  - Your car has a V or an S engine")
	
    )
  )
))