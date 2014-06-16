# ui.R
shinyUI(pageWithSidebar(
  headerPanel("Fray Jorge Small Mammals"),
  sidebarPanel(
    radioButtons("Spp", "Select Species to Plot",selected='AB',
                       c("Abrocoma bennetti" = "AB",
                         "Abrothrix longipilis" = "AL",
                         "Abrothrix olivaceus" = "AO",
                         "Thylamys elegans" = "ME",
                         "Octodon degus" = "OD",
                         "Oligoryzomys longicaudatus" = "OL",
                         "Phyllotis darwini" = "PD"))
    ),
  mainPanel(
    h3('Plot Small Mammal Population Density Over Time'),
    h6('Since 1989 we have conducted monthly censuses of the small mammals in Fray Jorge National Park in
       in North-central Chile. To see how the populations have changed select one of the seven species 
        listed on the left.  The graph below will show the species population abundance over time.'),
    #h4('Species Selected'),
    #verbatimTextOutput("oSpp"),
      
    plotOutput('plotSpp')

  )
))



