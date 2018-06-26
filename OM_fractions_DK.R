OM_fractions <- function(
  d13Csample,
  d13Cterrigenous,
  d13Cmarine,
  method = "jasper"
) 
{
  switch(method,
         "jasper" = {
           fm <- (d13Csample - d13Cterrigenous) / (d13Cmarine - d13Cterrigenous)
           ft <- 1 - fm
         },
         "shultz" = {
           ft <- (d13Csample - d13Cmarine) / (d13Cterrigenous - d13Cmarine)
           fm <- 1 - ft
         })
  return(setNames(list(fm,ft), 
                  c("fm", "ft")))
}