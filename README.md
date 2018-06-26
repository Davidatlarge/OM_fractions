Organic matter fractions
================
David Kaiser
26 Juni 2018

Description
-----------

A function to calculate the fractions of marine ("fm") and terrigenous ("ft") organic matter in a mixed sample in a two-endmember model using stable carbon isotope values. Two methods of calculation are possible, i.e. "jasper" and "shultz", the results are identical. "jasper" and "shultz" originally calculate fm and ft, respectively. The other fraction is calculted as the difference from 1. The result is a named list containing "fm" and "ft".

Arguments
---------

*d13Csample* -- the *δ*<sup>13</sup>*C* value of the sample, in ‰

*d13Cterrigenous* -- the *δ*<sup>13</sup>*C* value of the terrigenous reference, in ‰

*d13Cmarine* -- the *δ*<sup>13</sup>*C* value of the marine reference, in ‰

*method* = "jasper" -- method to be used, "jasper" or "shultz"; defaults to "jasper"

Result
------

A named list containing the numeric values "fm" and "ft", respectively representing the marine fraction and the terrestrial fraction in the sample.

Examples
--------

with default method

``` r
OM_fractions(d13Csample = -21.4,
                d13Cterrigenous = -28.7,
                d13Cmarine = -20.9)
```

    $fm
    [1] 0.9358974

    $ft
    [1] 0.06410256

with method = "shultz"

``` r
OM_fractions(d13Csample = -21.4,
                d13Cterrigenous = -28.7,
                d13Cmarine = -20.9,
             method = "shultz")
```

    $fm
    [1] 0.9358974

    $ft
    [1] 0.06410256

References
----------

[Jasper and Gagosian (1990) The sources and deposition of organic matter in the Late Quaternary Pigmy Basin, Gulf of Mexico, Geochimica et Cosmochimica Acta Vol. 54, pp. 1117-1132](https://www.sciencedirect.com/science/article/pii/001670379090443O)

[Shultz and Clader (1976) Organic carbon 13C/12C variations in estuarine sediments, Geochimica et Cosmochimica Acta Vol. 40, pp. 381-385](https://www.sciencedirect.com/science/article/pii/0016703776900028)
