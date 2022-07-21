### Occurrence
##check and maybe remove extra columns

# response_data <- response_data %>%
#   select(-c(Copepods, Other_zooplankton, Total_zooplankton)) %>%
#   rowwise() %>%
#   tidyr::pivot_longer(., cols=(Alexandrium:Total_phytoplankton),
#                       names_to = "organismName",
#                       values_to = "organismQuantity",) %>%
#   dplyr::left_join(.,tax_table, by="organismName") %>%
#   tibble::add_column(basisOfRecord="HumanObservation", .after="id") %>%
#   tibble::add_column(organismQuantityType= "Cells per L", .after="organismQuantity") %>% 
#   dplyr::mutate(organismQuantity=ifelse(is.na(organismQuantity)==T, 0, organismQuantity)) %>%
#   dplyr::mutate(occurrenceID=paste(strftime(eventDate, "%Y-%m-%dT%H:%M:%S%Z", tz = "Zulu"), organismName, sep="_")) %>%
#   dplyr::mutate(occurrenceStatus= ifelse(organismQuantity>0, "present", "absent")) %>%
#   dplyr::select(id, basisOfRecord, organismName, organismQuantity, organismQuantityType,
#                 occurrenceID, occurrenceStatus, scientificName, scientificNameID, taxonID, kingdom) %>%
#   dplyr::filter_at(vars(occurrenceStatus), all_vars(!is.na(.))) 
# 
# googlesheets4::sheet_append(ss,  sheet = "occurrence_temp", data=response_data)



%>%
  filter(organismQuantityType=="Cells per L")