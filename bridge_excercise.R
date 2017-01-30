getwd()
#read the bridge file 2015 data
inData = read.delim("slubkin_992016-20160125163323.txt", sep = ",", header = TRUE)
View(inData)
# b_2015 = dt_bridges_2015[, c("STRUCTURE_NUMBER_008","YEAR_BUILT_027","COUNTY_CODE_003", "SUPERSTRUCTURE_COND_059","BRIDGE_IMP_COST_094")]
# year=mydata[,1]
outData=data.frame(inData=inData$STRUCTURE_NUMBER_008, year=inData$YEAR_BUILT_027, fips = inData$COUNTY_CODE_003, condition = inData$SUPERSTRUCTURE_COND_059, cost = inData$BRIDGE_IMP_COST_094)