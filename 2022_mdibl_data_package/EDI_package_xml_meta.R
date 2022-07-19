library(tidyverse) 
library(EMLassemblyline)
library(flextable)
library(data.table)
setDTthreads(threads=1)
setwd("/Users/m.maniscalco/Dropbox/EDI_fellowship/MDIBL_phytoplankton/2022_mdibl_data_package")

# template_table_attributes(path="./metadata_templates",
#                           data.path = "./data_objects",
#                           data.table = c("event.csv",
#                                          "occurrence.csv",
#                                          "ExtendedMeasurementOrFact.csv"),
#                           write.file = TRUE,
#                           x = NULL)
# 
# template_categorical_variables(path="./metadata_templates",
#                                data.path = "./data_objects",
#                                write.file = TRUE)

# template_taxonomic_coverage(
#   path="./metadata_templates",
#   data.path = "./source_data",
#   taxa.table="tax_table.csv",
#   taxa.col="scientificName",
#   taxa.name.type= "scientific",
#   taxa.authority=9, 
#   empty = FALSE,
#   write.file = TRUE
# )

eml_doc <- make_eml(path="./metadata_templates",
                    data.path = "./data_objects",
                    data.table = c("event.csv","occurrence.csv","ExtendedMeasurementOrFact.csv"),
                    data.table.description= c("DwC-A Event Table","DwC-A Occurrence Table","DwC-A Extended Measurement Or Fact Table"),
                    data.table.name = c("event","occurrence","ExtendedMeasurementOrFact"),
                    eml.path = "./eml",
                    dataset.title = "Harmful algal bloom monitoring data near Frenchmans Bay from 2004-2022",
                    maintenance.description = "On going collection with annual updates",
                    temporal.coverage = c('2004-08-02', '2022-06-01'), 
                    write.file = TRUE,
                    data.table.quote.character = NULL,
                    data.table.url = NULL,
                    other.entity = NULL,
                    other.entity.name = NULL,
                    other.entity.description = NULL,
                    other.entity.url = NULL,
                    user.id = "mmaniscalco",
                    user.domain = "EDI",
                    package.id = "edi.2691234123.1",
                    return.obj = FALSE,
                    x = NULL)






