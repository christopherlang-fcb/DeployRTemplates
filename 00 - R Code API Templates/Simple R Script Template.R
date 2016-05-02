

# Load deployrUtils package (REQUIRED) ====
library(deployrUtils)


# Declare package dependencies (REQUIRED) ====
deployrUtils::deployrPackage("dplyr")
deployrUtils::deployrPackage("data.table")


# Declare script inputs (ex. API) (OPTIONAL) ====
# provide a JSON key-value string for each input
# the keys "name", "render", "default" are all required
#   name : provides the name of the input. a variable with this name is created
#   render: states the datatype of input. Hence name will be an integer variable
#   default: the default value for this input
# Declare this for each input you expect
# For render, R atomic datatypes are supported:
# character, integer, numeric, factor, ordered, logical

# An integer variable called myName is created
deployrUtils::deployrInput('{"name":"myName","render":"integer","default":5}')

# A numeric variable called amt is created, in addition to myName (above)
deployrUtils::deployrInput('{"name":"amt","label":"Amount","render":"numeric","default":6,"min":5,"max":10}')


# Load involved data (OPTIONAL) ====
# You can load text files, RData, RDS, etc.
#
# load('myData')
# read.csv('myCSV')
# readRDS('myRDS')
# use deployr::deployrExternal
# that function works locally but also works on DeployR server, where a dedicated
# area that stores data is setup. This'll return the path to the file


# Script logic (REQUIRED) ====
# Starting here, your R code is written, using any objects (loaded or inputted)
# and any packages you've declared


# Return value ====
# Currently, I think its the last object that is printed
#
# For returning images such as PNG and SVG, use the typical workflow:
# png(...)
# plot code here
# dev.off()