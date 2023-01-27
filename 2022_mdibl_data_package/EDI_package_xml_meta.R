library(EMLassemblyline)
setwd("/Users/m.maniscalco/Dropbox/EDI_fellowship/MDIBL_phytoplankton/2022_mdibl_data_package")


eml_doc <- make_eml(path="./metadata_templates",
                    data.path = "./data_objects",
                    data.table = c("event.csv","occurrence.csv","ExtendedMeasurementOrFact.csv"),
                    data.table.description= c("DwC-A Event Table","DwC-A Occurrence Table","DwC-A Extended Measurement Or Fact Table"),
                    data.table.name = c("event","occurrence","ExtendedMeasurementOrFact"),
                    eml.path = "./eml",
                    dataset.title = "Harmful algal bloom monitoring data near Frenchman Bay from 2004-2022",
                    maintenance.description = "On going collection with annual updates",
                    temporal.coverage = c('2004-08-02', '2022-07-13'), 
                    write.file = TRUE,
                    data.table.quote.character = NULL,
                    # data.table.url = c("https://pasta.lternet.edu/package/data/eml/edi/8675309/1/4119639092e62c55ea8be348e4d9260d",
                    #                    "https://pasta.lternet.edu/package/data/eml/edi/8675309/1/7ad56af78ac5f73d81f5e80293f1d6c9",
                    #                    "https://pasta.lternet.edu/package/data/eml/edi/8675309/1/8d32e1a8d80e6db55fabf79b56a8979c"),
                    other.entity = NULL,
                    other.entity.name = NULL,
                    other.entity.description = NULL,
                    other.entity.url = NULL,
                    user.id = c("mmaniscalco",'agarrets', "mohonkpreserve"),
                    user.domain = c("EDI", 'EDI', 'EDI'),
                    package.id = "edi.8675309.3",
                    return.obj = FALSE,
                    x = NULL)

