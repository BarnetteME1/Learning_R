statesInfo <- read.csv('stateData.csv')

state_subset <- subset(statesInfo, state.region == 1)

dim(state_subset)

state_subset_bracket <- statesInfo[statesInfo$state.region ==1, ]

dim(state_subset_bracket)