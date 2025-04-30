#!/opt/homebrew/bin/Rscript

## These take a long time to install
# install.packages('data.tree',repos = "http://cran.us.r-project.org")
# install.packages('networkD3',repos = "http://cran.us.r-project.org")

library(networkD3)

library(magrittr)

radialNetwork(
	List = jsonlite::fromJSON(paste0("vimShortcuts.json"), simplifyDataFrame = FALSE),
	height = 900, width = 900, fontSize = 10,
	fontFamily = "serif", linkColour = "#ccc", nodeColour = "#fff",
	nodeStroke = "green", textColour = "#111", opacity = 0.9,
	margin = NULL) %>% saveNetwork(file = 'vimShortcuts.html')

