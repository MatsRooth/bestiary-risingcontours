

## Utterances

## HARD CODED OPTIONS FOR SUBSETS

library(shinyWidgets)

contourLevels = c(
  "Fall",
  "Upstepped Fall",
  "Other Fall",
  "Polarity Focus",
  "Presumption Contour",
  "Contradiction Contour",
  "RFR",
  "Yes/No Rise",
  "Incredulity Contour"
)
items = c('1', '2', '3', '4', '5', '6', '7', '8', '9')
genders <- c("Female", "Male")
participants = c(
  "1072",
  "1094",
  "1322",
  "1323",
  "1451",
  "1471",
  "15",
  "1543",
  "1549",
  "1600",
  "1617",
  "1619",
  "1620",
  "1645",
  "1646",
  "1647",
  "1648",
  "1649",
  "1654",
  "1656",
  "1657",
  "1658",
  "1659",
  "1663",
  "1677",
  "1684",
  "618",
  "930"
)

ui <- fluidPage(
  
  h4("Naturalness ratings of each utterance in all three contexts:"),
  
  plotOutput(
    "naturalness_plot",
    height = 200,
    # Equivalent to: click = clickOpts(id = "plot_click")
    click = "plot3_click",
    hover = "plot3_hover"
  ),
    
  fluidRow(
    div(class = "col-xs-3", 
        pickerInput(
          "contourGroup",
          label = h3("Contour"),
          choices = contourLevels,
          selected = contourLevels,
          options = list(`actions-box` = TRUE),
          multiple = T
        )),
    div( class = "col-xs-3",
      pickerInput(
        "itemToggle",
        label = h3("Item"),
        choices = items,
        selected = items,
        options = list(`actions-box` = TRUE),
        multiple = T
      )), div( class = "col-xs-3",
        pickerInput(
          "participantToggle",
          label = h3("Participant"),
          choices = participants,
          selected = participants,
          options = list(`actions-box` = TRUE),
          multiple = T
        )), div( class = "col-xs-3",
      pickerInput(
        "genderToggle",
        label = h3("Gender"),
        choices = genders,
        selected = genders,
        options = list(`actions-box` = TRUE),
        multiple = T
      ))
    ), 
  
  plotOutput(
    "pitch_plot",
    height = 170,
    # Equivalent to: click = clickOpts(id = "plot_click")
    click = "plot_click",
    hover = hoverOpts("plot_hover", delay = 100, delayType = "debounce")
  ),
  uiOutput("hover_info"),
  
  ## UI ELEMENT FOR AUDIO
  uiOutput("wavfile")
  
)

