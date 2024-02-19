Trapped Charge Data Analysis: Task View
================
Sebastian Kreutzer
(last update: 2024-01-18)





- [About](#about)
- [Mission tasks](#mission-tasks)
- [Legend](#legend)

<!-- README.md was auto-generated by README.Rmd. Please DO NOT edit by hand!-->

# About

In analogy of the [CRAN task view
lists](https://cran.rstudio.com/web/views/), this list provides an
overview of freely available tools for trapped charge (dating) data
analysis (e.g., luminescence and ESR data). Tasks, software tools and
data repositories are ordered alphabetically. URLs are automatically
tested every time this list is updated, information from R packages are
extracted and updated automatically from
[CRAN](https://cloud.r-project.org) (version, description).

Not listed are:

- Single scripts (e.g., functions or XLS-sheets usually without a
  dedicated name)
- Software not accessible free of charge through the internet

If **your software is missing** or you did spot a mistake, please let me
know via <https://github.com/RLumSK/luminescence-tv/issues>.

# Mission tasks

Total number of listed tools: 42

### Age calculation

- <b><big>AGE</b></big>
  \[14/11/2009\] <img width=79px src='images/badges_application.svg' /> <img width=70px src='images/badges_sta_ancient.svg' /> ![](https://img.shields.io/badge/-WIN-lightgrey.svg) 
  <br />Program for the calculation of luminescence ages estimates
  <br />![](https://img.shields.io/badge/-URL-lightgrey.svg) <http://ancienttl.org/ATL_27-2_2009/ATL_27-2_Grun_supplement.zip>
  <br />
  *<small><http://ancienttl.org/ATL_27-2_2009/ATL_27-2_Grun_p45-46.pdf></small>*
  <hr/>
- <b><big>DRAC</b></big>
  \[1.2\] ![](images/osi_logo.png) <img width=79px src='images/badges_web_service.svg' /> <img width=70px src='images/badges_sta_stable.svg' /> ![](https://img.shields.io/badge/-WIN-lightgrey.svg) ![](https://img.shields.io/badge/-MAC-lightgrey.svg) ![](https://img.shields.io/badge/-LIN-lightgrey.svg) 
  <br />Online dose rate and luminescence age calculator
  <br />![](https://img.shields.io/badge/-URL-lightgrey.svg) <http://www.aber.ac.uk/en/dges/research/quaternary/luminescence-research-laboratory/dose-rate-calculator/>
  <br /> *<small>Durcan, J.A., King, G.E., Duller, G.A.T., 2015. DRAC:
  Dose Rate and Age Calculator for trapped charge dating. Quaternary
  Geochronology 28, 54–61. doi:
  <https://doi.org/10.1016/j.quageo.2015.03.012></small>*
  <hr/>
- <b><big>DRc</b></big>
  <img width=79px src='images/badges_application.svg' /> <img width=70px src='images/badges_sta_stable.svg' /> ![](https://img.shields.io/badge/-WIN-lightgrey.svg) 
  <br />Dose Rate Calculator for luminescence and ESR Dating (Java
  application)
  <br />![](https://img.shields.io/badge/-URL-lightgrey.svg) <https://www.dropbox.com/s/nvn6n68lt4to8ur/DRcalculator.exe?dl=0>
  <br /> *<small>Tsakalos, E., Christodoulakis, J., Charalambous,
  L., 2015. The Dose Rate Calculator (DRc) for Luminescence and ESR
  Dating-a Java Application for Dose Rate and Age Determination.
  Archaeometry 58, 347–352. doi:
  <https://doi.org/10.1111/arcm.12162></small>*
  <hr/>
- <b><big>eM-Age</b></big> \[version.1.1\] \[Mon, 14 Dec 2020 10:33:38
  GMT\] ![](images/osi_logo.png) <img width=79px src='images/badges_application.svg' /> <img width=70px src='images/badges_sta_stable.svg' /> ![](https://img.shields.io/badge/-WIN-lightgrey.svg) 
  <br />Application for luminescence age calculation based on Dose Rate
  and Age Calculator (DRAC) and Analyst
  <br />![](https://img.shields.io/badge/-URL-lightgrey.svg) <https://github.com/yomismovk/eM-Age-program>
  \| Source code: <https://github.com/yomismovk/eM-Age-program> <br />
  *<small>Pérez-Garrido, C., 2020. eM-Age (excel Macro for Age
  calculation), a new application for luminescence age calculation based
  on Dose Rate and Age Calculator (DRAC) and Analyst. Ancient TL 38,
  21–24.</small>*
- <b><big>μRate</b></big>
<br/>Web application for the calculation of dose rates
<br/> <img width=79px src='images/badges_web_service.svg'/> <img width=70px
                                                                 src='images/badges_sta_stable.svg'/> ![](https://img.shields.io/badge/-WIN-lightgrey.svg) ![](https://img.shields.io/badge/-MAC-lightgrey.svg) ![](https://img.shields.io/badge/-LIN-lightgrey.svg) 
<https://miu-rate.polsl.pl/miu-rate/>
<br/>
*<small>Tudyka, Konrad, Koruszowic, Michał, Osadnik, Rafał, Adamiec, Grzegorz, Moska, Piotr, Szymak, Agnieszka, Bluszcz,
    Andrzej, Zhang, Junjie, Kolb, Thomas, and Poręba, Grzegorz (2022). μRate: An online dose rate calculator for trapped
    charge dating. ARCHAEOMETRY, 65(2), 423-443. doi:
    <https://doi.org/10.1111/arcm.12828></small>*
<hr/>
  <hr/>

### Chronological modelling

- <b><big>ArchaeoChron</b></big>
  \[0.1\] ![](images/osi_logo.png) <img width=79px src='images/badges_r_package.svg' /> <img width=70px src='images/badges_sta_stable.svg' /> ![](https://img.shields.io/badge/-WIN-lightgrey.svg) ![](https://img.shields.io/badge/-MAC-lightgrey.svg) ![](https://img.shields.io/badge/-LIN-lightgrey.svg) 
  <br />Provides a list of functions for the Bayesian modeling of
  archaeological chronologies. The Bayesian models are implemented in
  ‘JAGS’ (‘JAGS’ stands for Just Another Gibbs Sampler. It is a program
  for the analysis of Bayesian hierarchical models using Markov Chain
  Monte Carlo (MCMC) simulation. See <http://mcmc-jags.sourceforge.net/>
  and “JAGS Version 4.3.0 user manual”, Martin Plummer (2017)
  <https://sourceforge.net/projects/mcmc-jags/files/Manuals/>.). The
  inputs are measurements with their associated standard deviations and
  the study period. The output is the MCMC sample of the posterior
  distribution of the event date with or without radiocarbon
  calibration.
  <br />![](https://img.shields.io/badge/-URL-lightgrey.svg) <https://CRAN.R-project.org/package=ArchaeoChron>
  <hr/>
- <b><big>ArchaeoPhases</b></big>
  \[1.8\] ![](images/osi_logo.png) <img width=79px src='images/badges_r_package.svg' /> <img width=70px src='images/badges_sta_stable.svg' /> ![](https://img.shields.io/badge/-WIN-lightgrey.svg) ![](https://img.shields.io/badge/-MAC-lightgrey.svg) ![](https://img.shields.io/badge/-LIN-lightgrey.svg) 
  <br />Provides a list of functions for the statistical analysis of
  archaeological dates and groups of dates. It is based on the
  post-processing of the Markov Chains whose stationary distribution is
  the posterior distribution of a series of dates. Such output can be
  simulated by different applications as for instance ‘ChronoModel’ (see
  <https://chronomodel.com/>), ‘Oxcal’ (see
  <https://c14.arch.ox.ac.uk/oxcal.html>) or ‘BCal’ (see
  <https://bcal.shef.ac.uk/>). The only requirement is to have a csv
  file containing a sample from the posterior distribution. Note that
  this package interacts with data available through the
  ‘ArchaeoPhases.dataset’ package which is available in a separate
  repository. The size of the ‘ArchaeoPhases.dataset’ package is
  approximately 4 MB.
  <br />![](https://img.shields.io/badge/-URL-lightgrey.svg) <https://CRAN.R-project.org/package=ArchaeoPhases>
  <br /> *<small>Philippe, A., Vibet, M.-A., 2018. Analysis of
  Archaeological Phases using the CRAN Package ArchaeoPhases. Journal of
  Statistical Software 1–26. doi:
  <https://doi.org/10.18637/jss.v000.i00></small>*
  <hr/>
- <b><big>BayLum</b></big>
  \[0.3.1\] ![](images/osi_logo.png) <img width=79px src='images/badges_r_package.svg' /> <img width=70px src='images/badges_sta_stable.svg' /> ![](https://img.shields.io/badge/-WIN-lightgrey.svg) ![](https://img.shields.io/badge/-MAC-lightgrey.svg) ![](https://img.shields.io/badge/-LIN-lightgrey.svg) 
  <br />Bayesian analysis of luminescence data and C-14 age estimates.
  Bayesian models are based on the following publications: Combes, B. &
  Philippe, A. (2017) <doi:10.1016/j.quageo.2017.02.003> and Combes et
  al (2015) <doi:10.1016/j.quageo.2015.04.001>. This includes, amongst
  others, data import, export, application of age models and palaeodose
  model.
  <br />![](https://img.shields.io/badge/-URL-lightgrey.svg) <https://CRAN.R-project.org/package=BayLum>
  \| Source code: <https://github.com/crp2a/BayLum> <br />
  *<small>Philippe, A., Guérin, G., Kreutzer, S., 2019. BayLum - An R
  package for Bayesian analysis of OSL ages: An introduction. Quaternary
  Geochronology 49, 16–24. doi:
  <https://doi.org/10.1016/j.quageo.2018.05.009></small>*
  <hr/>
- <b><big>ChronoModel</b></big>
  \[2.0.18\] \[01/02/2019\] ![](images/osi_logo.png) <img width=79px src='images/badges_application.svg' /> <img width=70px src='images/badges_sta_stable.svg' /> ![](https://img.shields.io/badge/-WIN-lightgrey.svg) ![](https://img.shields.io/badge/-MAC-lightgrey.svg) ![](https://img.shields.io/badge/-LIN-lightgrey.svg) 
  <br />Chronological Modelling of Archaeological Data using Bayesian
  Statistics with an advanced graphical user interface
  <br />![](https://img.shields.io/badge/-URL-lightgrey.svg) <https://chronomodel.com>
  \| Source code: <https://github.com/Chronomodel/chronomodel>
  <hr/>
- <b><big>mcmcSAM</b></big> \[Mon, 07 Jan 2019 14:17:22
  GMT\] ![](images/osi_logo.png) <img width=79px src='images/badges_r_scripts.svg' /> <img width=70px src='images/badges_sta_unknown.svg' /> ![](https://img.shields.io/badge/-WIN-lightgrey.svg) ![](https://img.shields.io/badge/-MAC-lightgrey.svg) ![](https://img.shields.io/badge/-LIN-lightgrey.svg) 
  <br />Analyzing statistical age models for equivalent dose and burial
  age determination using a Markov Chain Monte Carlo method
  <br />![](https://img.shields.io/badge/-URL-lightgrey.svg) <https://github.com/pengjunUCAS/mcmcSAM>
  \| Source code: <https://github.com/pengjunUCAS/mcmcSAM>
  [![](https://img.shields.io/static/v1.svg?style=flat&label=DOI&message=10.1515/geochr-2015-0114&color=blue)](https://doi.org/10.1515/geochr-2015-0114)
  <br /> *<small>Peng, J., 2020. Analyzing statistical age models to
  determine the equivalent dose and burial age using a Markov chain
  Monte Carlo method. Geochronometria 0, 1–14. </small>*
  <hr/>
- <b><big>RChronoModel</b></big>
  \[0.4\] ![](images/osi_logo.png) <img width=79px src='images/badges_r_package.svg' /> <img width=70px src='images/badges_sta_stable.svg' /> ![](https://img.shields.io/badge/-WIN-lightgrey.svg) ![](https://img.shields.io/badge/-MAC-lightgrey.svg) 
  <br />Provides a list of functions for the statistical analysis and
  the post-processing of the Markov Chains simulated by ChronoModel (see
  <http://www.chronomodel.fr> for more information). ChronoModel is a
  friendly software to construct a chronological model in a Bayesian
  framework. Its output is a sampled Markov chain from the posterior
  distribution of dates component the chronology. The functions can also
  be applied to the analyse of mcmc output generated by Oxcal software.
  <br />![](https://img.shields.io/badge/-URL-lightgrey.svg) <https://CRAN.R-project.org/package=RChronoModel>
  <br /> *<small>Philippe, A., Vibet, M.-A., 2017. Analysis of
  Archaeological Phases using the CRAN Package RChronoModel. doi:
  <https://doi.org/10.13140/RG.2.2.19659.59688></small>*
  <hr/>

### Data exchange

- <b><big>xlum</b></big> \[v0.1.0\] \[Fri, 25 Nov 2022 17:58:38
  GMT\] ![](images/osi_logo.png) <img width=79px src='images/badges_r_package.svg' /> <img width=70px src='images/badges_sta_devel.svg' /> ![](https://img.shields.io/badge/-WIN-lightgrey.svg) ![](https://img.shields.io/badge/-MAC-lightgrey.svg) ![](https://img.shields.io/badge/-LIN-lightgrey.svg) 
  <br />The R package xlum to interface <xlum/> a data format for
  exchange and long-term preservation of luminescence data.
  <br />![](https://img.shields.io/badge/-URL-lightgrey.svg) <https://github.com/R-Lum/xlum>
  \| Source code: <https://github.com/R-Lum/xlum>
  [![](https://img.shields.io/static/v1.svg?style=flat&label=DOI&message=%2010.5281/zenodo.7362364&color=blue)](https://doi.org/%2010.5281/zenodo.7362364)
  <br /> *<small>Kreutzer, S., Burow, C., 2022. xlum: read, write, and
  convert XLUM Data (v0.1.0). Zenodo.
  <https://doi.org/10.5281/zenodo.7362364></small>*
  <hr/>
- <b><big>xlum</b></big>
  \[0.0.7\] ![](images/osi_logo.png) <img width=79px src='images/badges_python_package.svg' /> <img width=70px src='images/badges_sta_stable.svg' /> ![](https://img.shields.io/badge/-WIN-lightgrey.svg) ![](https://img.shields.io/badge/-MAC-lightgrey.svg) ![](https://img.shields.io/badge/-LIN-lightgrey.svg) 
  <br />Python package
  <br />![](https://img.shields.io/badge/-URL-lightgrey.svg) <https://pypi.org/project/xlum/>
  \| Source code: <https://github.com/SteveGrehl/xlum-python>
  [![](https://img.shields.io/static/v1.svg?style=flat&label=DOI&message=%20&color=blue)](https://doi.org/)
  <br /> *<small>Grehl, S., 2022. xlum-pytong: Python importer for the
  XLUM data exchange and archive format</small>*
  <hr/>

### Data mining

- <b><big>INQUA Dunes Atlas</b></big>
  <img width=79px src='images/badges_repository.svg' /> <img width=70px src='images/badges_sta_unknown.svg' /> ![](https://img.shields.io/badge/-WIN-lightgrey.svg) ![](https://img.shields.io/badge/-MAC-lightgrey.svg) ![](https://img.shields.io/badge/-LIN-lightgrey.svg) 
  <br />Collection of luminescence ages from sand dunes world wide
  <br />![](https://img.shields.io/badge/-URL-red.svg) <http://www.dri.edu/inquadunesatlas>
  <br /> *<small>Lancaster, N., Wolfe, S., Thomas, D., Bristow, C.,
  Bubenzer, O., Burrough, S., Duller, G., Halfen, A., Hesse, P., Roskin,
  J., Singhvi, A., Tsoar, H., Tripaldi, A., Yang, X., Zárate, M., 2015.
  The INQUA Dunes Atlas chronologic database. Quaternary International
  410, 3–10. doi:
  <https://doi.org/10.1016/j.quaint.2015.10.044></small>*
  <hr/>
- <b><big>OCTOPUS</b></big>
  <img width=79px src='images/badges_repository.svg' /> <img width=70px src='images/badges_sta_stable.svg' /> ![](https://img.shields.io/badge/-WIN-lightgrey.svg) ![](https://img.shields.io/badge/-MAC-lightgrey.svg) ![](https://img.shields.io/badge/-LIN-lightgrey.svg) 
  <br />Open cosmogenic nuclide and luminescence data database
  <br />![](https://img.shields.io/badge/-URL-lightgrey.svg) <https://earth.uow.edu.au>
  <br /> *<small>Codilean, A.T., Munack, H., Cohen, T.J., Saktura, W.M.,
  Gray, A., Mudd, S.M., 2018. OCTOPUS: an open cosmogenic isotope and
  luminescence database. Earth Syst. Sci. Data 10, 2123–2139. doi:
  <https://doi.org/10.5194/essd-10-2123-2018></small>*
  <hr/>

### Dose rate modelling

- <b><big>DosiVox</b></big>
  \[03/12/2018\] ![](images/osi_logo.png) <img width=79px src='images/badges_application.svg' /> <img width=70px src='images/badges_sta_stable.svg' /> ![](https://img.shields.io/badge/-WIN-lightgrey.svg) ![](https://img.shields.io/badge/-MAC-lightgrey.svg) ![](https://img.shields.io/badge/-LIN-lightgrey.svg) 
  <br />A Geant 4-based software for dosimetry simulations relevant to
  luminescence and ESR dating techniques
  <br />![](https://img.shields.io/badge/-URL-lightgrey.svg) <http://www.iramat-crp2a.cnrs.fr/spip/spip.php?article144&lang=fr>
  <br /> *<small>Martin, L., Incerti, S., Mercier, N., 2015. DosiVox:
  Implementing Geant 4-based software for dosimetry simulations relevant
  to luminescence and ESR dating techniques. Ancient TL 33, 1–10.
  <http://ancienttl.org/ATL_33-1_2015/ATL_33-1_Martin_p1-10.pdf></small>*
  <hr/>
- <b><big>DosiVox2D</b></big>
  \[03/12/2018\] ![](images/osi_logo.png) <img width=79px src='images/badges_application.svg' /> <img width=70px src='images/badges_sta_devel.svg' /> ![](https://img.shields.io/badge/-WIN-lightgrey.svg) ![](https://img.shields.io/badge/-MAC-lightgrey.svg) ![](https://img.shields.io/badge/-LIN-lightgrey.svg) 
  <br />A Geant 4-based software for dosimetry simulations relevant to
  luminescence and ESR dating techniques; simplified version in
  comparison to DosiVox
  <br />![](https://img.shields.io/badge/-URL-lightgrey.svg) <http://www.iramat-crp2a.cnrs.fr/spip/spip.php?article144&lang=fr>
  <hr/>
- <b><big>RCarb</b></big>
  \[0.1.6\] ![](images/osi_logo.png) <img width=79px src='images/badges_r_package.svg' /> <img width=70px src='images/badges_sta_stable.svg' /> ![](https://img.shields.io/badge/-WIN-lightgrey.svg) ![](https://img.shields.io/badge/-MAC-lightgrey.svg) ![](https://img.shields.io/badge/-LIN-lightgrey.svg) 
  <br />Translation of the ‘MATLAB’ program ‘Carb’ (Nathan and Mauz 2008
  <doi:10.1016/j.radmeas.2007.12.012>; Mauz and Hoffmann 2014) for dose
  rate modelling for carbonate-rich samples in the context of trapped
  charged dating (e.g., luminescence dating) applications.
  <br />![](https://img.shields.io/badge/-URL-lightgrey.svg) <https://CRAN.R-project.org/package=RCarb>
  \| Source code: <https://github.com/R-Lum/Rcarb> <br />
  *<small>Kreutzer, S., Mauz, B., Martin, L., Mercier, N., 2019.
  “RCarb”: Dose Rate Modelling of Carbonate-Rich Samples - an
  Implementation of Carb in R . Ancient TL 37, 1–8.</small>*
  <hr/>

### Dosimetry

- <b><big>gamma</b></big> \[ \] \[
  \] ![](images/osi_logo.png) <img width=79px src='images/badges_r_package.svg' /> <img width=70px src='images/badges_sta_stable.svg' /> ![](https://img.shields.io/badge/-WIN-lightgrey.svg) ![](https://img.shields.io/badge/-MAC-lightgrey.svg) ![](https://img.shields.io/badge/-LIN-lightgrey.svg) 
  <br />
  <br />![](https://img.shields.io/badge/-URL-lightgrey.svg) <https://CRAN.R-project.org/package=gamma>
  \| Source code: <https://github.com/crp2a/gamma>
  [![](https://img.shields.io/static/v1.svg?style=flat&label=DOI&message=10.5281/zenodo.2652393&color=blue)](https://doi.org/10.5281/zenodo.2652393)
  <br /> *<small> </small>*
  <hr/>
- <b><big>OxGamma</b></big>
  <img width=79px src='images/badges_application.svg' /> <img width=70px src='images/badges_sta_stable.svg' /> ![](https://img.shields.io/badge/-WIN-lightgrey.svg) ![](https://img.shields.io/badge/-MAC-lightgrey.svg) 
  <br />A MATLAB based application for the analysis of gamma-ray spectra
  <br />![](https://img.shields.io/badge/-URL-lightgrey.svg) <https://drive.google.com/drive/folders/1caKSAQ45b1EHCM1pMybCzUQ19dIn4lOc?usp=sharing>
  [![](https://img.shields.io/static/v1.svg?style=flat&label=DOI&message=10.1016/j.radmeas.2022.106761&color=blue)](https://doi.org/10.1016/j.radmeas.2022.106761)
  <br /> *<small>Kumar, R., Frouin, M., Gazack, J., Schwenninger,
  J.-L., 2022. OxGamma: A MATLAB based application for the analysis of
  gamma-ray spectra. Radiation Measurements 154, 106761.
  s://doi.org/10.1016/j.radmeas.2022.106761</small>*
  <hr/>

### ESR data analysis

- <b><big>ESR</b></big> \[Fri, 18 Jan 2019 12:31:54
  GMT\] ![](images/osi_logo.png) <img width=79px src='images/badges_r_package.svg' /> <img width=70px src='images/badges_sta_devel.svg' /> ![](https://img.shields.io/badge/-WIN-lightgrey.svg) ![](https://img.shields.io/badge/-MAC-lightgrey.svg) ![](https://img.shields.io/badge/-LIN-lightgrey.svg) 
  <br />R package ESR for plotting and analysing ESR spectra in dating
  applications
  <br />![](https://img.shields.io/badge/-URL-lightgrey.svg) <https://github.com/tzerk/ESR>
  \| Source code: <https://github.com/tzerk/ESR>
  <hr/>
- <b><big>MCDoseE</b></big>
  <img width=79px src='images/badges_application.svg' /> <img width=70px src='images/badges_sta_stable.svg' /> ![](https://img.shields.io/badge/-WIN-lightgrey.svg) ![](https://img.shields.io/badge/-MAC-lightgrey.svg) 
  <br />Dose response curve fitting, dose evaluation for ESR dating
  <br />![](https://img.shields.io/badge/-URL-red.svg) <https://www.sciencedirect.com/science/article/pii/S1871101417300626?via%3Dihub>
  <br /> *<small>Joannes-Boyau, R., Duval, M., Bodin, T., 2017. MCDoseE
  2.0 A new Markov Chain Monte Carlo program for ESR dose response curve
  fitting and dose evaluation. Quaternary Geochronology 44, 1–25. doi:
  <https://doi.org/10.1016/j.quageo.2017.11.003></small>*
  <hr/>

### Gamma-ray spectrometry

- <b><big>gammaSpec</b></big> \[Fri, 18 Jan 2019 15:13:50
  GMT\] ![](images/osi_logo.png) <img width=79px src='images/badges_r_scripts.svg' /> <img width=70px src='images/badges_sta_devel.svg' /> ![](https://img.shields.io/badge/-WIN-lightgrey.svg) ![](https://img.shields.io/badge/-MAC-lightgrey.svg) ![](https://img.shields.io/badge/-LIN-lightgrey.svg) 
  <br />A collection of functions to analyse gamma-ray spectra
  <br />![](https://img.shields.io/badge/-URL-lightgrey.svg) <https://github.com/tzerk/gammaSpec>
  \| Source code: <https://github.com/tzerk/gammaSpec>
  <hr/>
- <b><big>rxylib</b></big>
  \[0.2.12\] ![](images/osi_logo.png) <img width=79px src='images/badges_r_package.svg' /> <img width=70px src='images/badges_sta_stable.svg' /> ![](https://img.shields.io/badge/-WIN-lightgrey.svg) ![](https://img.shields.io/badge/-MAC-lightgrey.svg) ![](https://img.shields.io/badge/-LIN-lightgrey.svg) 
  <br />Provides access to the ‘xylib’ C library for to import xy data
  from powder diffraction, spectroscopy and other experimental methods.
  <br />![](https://img.shields.io/badge/-URL-lightgrey.svg) <https://CRAN.R-project.org/package=rxylib>
  \| Source code: <https://github.com/R-Lum/rxylib>
  <hr/>

### Luminescence data analysis

- <b><big>Analyst</b></big>
  \[4.57\] <img width=79px src='images/badges_application.svg' /> <img width=70px src='images/badges_sta_stable.svg' /> ![](https://img.shields.io/badge/-WIN-lightgrey.svg) 
  <br />The standard programme to analyse luminescence data
  <br />![](https://img.shields.io/badge/-URL-lightgrey.svg) <http://users.aber.ac.uk/ggd/>
  <br /> *<small>Duller, G.A.T., 2015. The Analyst software package for
  luminescence data: overview and recent improvements. Ancient TL 33,
  35–42.
  <http://ancienttl.org/ATL_33-1_2015/ATL_33-1_Duller_p35-42.pdf></small>*
  <hr/>
- <b><big>LDAC</b></big> \[v1.2.1\] \[Sun, 02 Apr 2023 03:59:11
  GMT\] ![](images/osi_logo.png) <img width=79px src='images/badges_application.svg' /> <img width=70px src='images/badges_sta_stable.svg' /> ![](https://img.shields.io/badge/-WIN-lightgrey.svg) 
  <br />A Microsoft Excel Visual Basic for Application (VBA)-based
  package which can be used to assemble OSL age information and
  associated calculations. This platform applies statistical models to
  determine equivalent dose (De) values and render corresponding OSL age
  estimates. This software is fully applicable for De measurements by
  single grain and aliquot regeneration (SAR) and thermal transfer OSL
  (TT-OSL) protocols. It could also be used to calculate the dose rate
  and final buried age for geology/archaeology samples.
  <br />![](https://img.shields.io/badge/-URL-lightgrey.svg) <https://github.com/lesshsroc/LDAC/releases>
  \| Source code: <https://github.com/Peng-Liang/LDAC> <br />
  *<small>Liang, P., Forman, S.L., 2019. LDAC: An Excel-based program
  for luminescence equivalent dose and burial age calculations. Ancient
  TL 37, 21–40.</small>*
  <hr/>
- <b><big>Luminescence</b></big>
  \[0.9.23\] ![](images/osi_logo.png) <img width=79px src='images/badges_r_package.svg' /> <img width=70px src='images/badges_sta_stable.svg' /> ![](https://img.shields.io/badge/-WIN-lightgrey.svg) ![](https://img.shields.io/badge/-MAC-lightgrey.svg) ![](https://img.shields.io/badge/-LIN-lightgrey.svg) 
  <br />A collection of various R functions for the purpose of
  Luminescence dating data analysis. This includes, amongst others, data
  import, export, application of age models, curve deconvolution,
  sequence analysis and plotting of equivalent dose distributions.
  <br />![](https://img.shields.io/badge/-URL-lightgrey.svg) <https://CRAN.R-project.org/package=Luminescence>
  \| Source code: <https://github.com/R-Lum/Luminescence> <br />
  *<small>Kreutzer, S., Schmidt, C., Fuchs, M.C., Dietze, M., Fischer,
  M., Fuchs, M., 2012. Introducing an R package for luminescence dating
  analysis. Ancient TL 30, 1–8.
  <http://ancienttl.org/ATL_30-1_2012/ATL_30-1_Kreutzer_p1-8.pdf></small>*
  <hr/>
- <b><big>numOSL</b></big>
  \[2.8\] ![](images/osi_logo.png) <img width=79px src='images/badges_r_package.svg' /> <img width=70px src='images/badges_sta_stable.svg' /> ![](https://img.shields.io/badge/-WIN-lightgrey.svg) ![](https://img.shields.io/badge/-MAC-lightgrey.svg) ![](https://img.shields.io/badge/-LIN-lightgrey.svg) 
  <br />Optimizing regular numeric problems in optically stimulated
  luminescence dating, such as: equivalent dose calculation, dose rate
  determination, growth curve fitting, decay curve decomposition,
  statistical age model optimization, and statistical plot
  visualization.
  <br />![](https://img.shields.io/badge/-URL-lightgrey.svg) <https://CRAN.R-project.org/package=numOSL>
  <br /> *<small>Peng, J., Dong, Z., Han, F., Long, H., Liu, X., 2013. R
  package numOSL: numeric routines for optically stimulated luminescence
  dating. Ancient TL 31, 41–48.
  <http://ancienttl.org/ATL_31-2_2013/ATL_31-2_Peng_p41-48.pdf></small>*
  <hr/>
- <b><big>PTanalyse</b></big>
  \[1.51\] <img width=79px src='images/badges_application.svg' /> <img width=70px src='images/badges_sta_stable.svg' /> ![](https://img.shields.io/badge/-WIN-lightgrey.svg) 
  <br />Proprietary software to analyse TR-OSL data
  <br />![](https://img.shields.io/badge/-URL-lightgrey.svg) <https://www.fysik.dtu.dk/english/research/radphys/research/radiation-instruments/tl_osl_reader/software>
  <br /> *<small>Lapp, T., Jain, M., Ankjærgaard, C., Pirtzel, L., 2009.
  Development of pulsed stimulation and Photon Timer attachments to the
  Risø TL/OSL reader. Radiation Measurements 44, 571–575. doi:
  <https://doi.org/10.1016/j.radmeas.2009.01.012></small>*
  <hr/>
- <b><big>RLanalyse</b></big>
  \[1.3\] <img width=79px src='images/badges_application.svg' /> <img width=70px src='images/badges_sta_stable.svg' /> ![](https://img.shields.io/badge/-WIN-lightgrey.svg) 
  <br />Proprietary software to analyse radiofluorescence data
  (BIN/BINX-file input required)
  <br />![](https://img.shields.io/badge/-URL-lightgrey.svg) <https://www.fysik.dtu.dk/english/research/radphys/research/radiation-instruments/tl_osl_reader/software>
  <br /> *<small>Lapp, T., Jain, M., Thomsen, K.J., Murray, A.S.,
  Buylaert, J.P., 2012. New luminescence measurement facilities in
  retrospective dosimetry. Radiation Measurements 47, 803–808. doi:
  <https://doi.org/10.1016/j.radmeas.2012.02.006></small>*
  <hr/>
- <b><big>tgcd</b></big>
  \[2.7\] ![](images/osi_logo.png) <img width=79px src='images/badges_r_package.svg' /> <img width=70px src='images/badges_sta_stable.svg' /> ![](https://img.shields.io/badge/-WIN-lightgrey.svg) ![](https://img.shields.io/badge/-MAC-lightgrey.svg) ![](https://img.shields.io/badge/-LIN-lightgrey.svg) 
  <br />Deconvolving thermoluminescence glow curves according to various
  kinetic models (first-order, second-order, general-order, and
  mixed-order) using a modified Levenberg-Marquardt algorithm
  (More, 1978) <doi:10.1007/BFb0067700>. It provides the possibility of
  setting constraints or fixing any of parameters. It offers an
  interactive way to initialize parameters by clicking with a mouse on a
  plot at positions where peak maxima should be located. The optimal
  estimate is obtained by “trial-and-error”. It also provides routines
  for simulating first-order, second-order, and general-order glow
  peaks.
  <br />![](https://img.shields.io/badge/-URL-lightgrey.svg) <https://CRAN.R-project.org/package=tgcd>
  <br /> *<small>Peng, J., Dong, Z., Han, F., 2016. tgcd: An R package
  for analyzing thermoluminescence glow curves. SoftwareX 1–9. doi:
  <https://doi.org/10.1016/j.softx.2016.06.001></small>*
  <hr/>
- <b><big>TLdating</b></big>
  \[0.1.3\] \[31/08/2016\] ![](images/osi_logo.png) <img width=79px src='images/badges_r_package.svg' /> <img width=70px src='images/badges_sta_ancient.svg' /> ![](https://img.shields.io/badge/-WIN-lightgrey.svg) ![](https://img.shields.io/badge/-MAC-lightgrey.svg) ![](https://img.shields.io/badge/-LIN-lightgrey.svg) 
  <br />
  <br />![](https://img.shields.io/badge/-URL-lightgrey.svg) <https://CRAN.R-project.org/package=TLdating>
  \| Source code: <https://github.com/dstreble/Tldating> <br />
  *<small>Strebler, D., Burow, C., Brill, D., Brückner, H., 2017. Using
  R for TL dating. Quaternary Geochronology 37, 97–107. doi:
  <https://doi.org/10.1016/j.quageo.2016.09.001></small>*
  <hr/>

### Luminescence data visualisation

- <b><big>Viewer</b></big>
  \[4.58\] <img width=79px src='images/badges_application.svg' /> <img width=70px src='images/badges_sta_ancient.svg' /> ![](https://img.shields.io/badge/-WIN-lightgrey.svg) 
  <br />Proprietary software to visualise luminescence data recorded in
  BIN/BINX-files
  <br />![](https://img.shields.io/badge/-URL-lightgrey.svg) <https://www.fysik.dtu.dk/english/research/radphys/research/radiation-instruments/tl_osl_reader/software>
  <br /> *<small> </small>*
  <hr/>
- <b><big>Viewer+</b></big>
  \[1.43\] <img width=79px src='images/badges_application.svg' /> <img width=70px src='images/badges_sta_stable.svg' /> ![](https://img.shields.io/badge/-WIN-lightgrey.svg) 
  <br />Proprietary software to visualise luminescence data recorded in
  BIN/BINX-files; sucessor of Viewer
  <br />![](https://img.shields.io/badge/-URL-lightgrey.svg) <https://www.fysik.dtu.dk/english/research/radphys/research/radiation-instruments/tl_osl_reader/software>
  <br /> *<small> </small>*
  <hr/>

### Miscellaneous

- <b><big>XRFanalyse</b></big>
  \[1.12\] <img width=79px src='images/badges_application.svg' /> <img width=70px src='images/badges_sta_stable.svg' /> ![](https://img.shields.io/badge/-WIN-lightgrey.svg) 
  <br />Proprietary software to analyse XRF data recorded with a Risø
  OSL/TL attachement
  <br />![](https://img.shields.io/badge/-URL-lightgrey.svg) <https://www.fysik.dtu.dk/english/research/radphys/research/radiation-instruments/tl_osl_reader/software>
  <br /> *<small> </small>*
  <hr/>

### Modelling

- <b><big>KMS</b></big> \[Wed, 11 Jul 2018 01:41:12
  GMT\] ![](images/osi_logo.png) <img width=79px src='images/badges_r_package.svg' /> <img width=70px src='images/badges_sta_stable.svg' /> ![](https://img.shields.io/badge/-WIN-lightgrey.svg) ![](https://img.shields.io/badge/-MAC-lightgrey.svg) ![](https://img.shields.io/badge/-LIN-lightgrey.svg) 
  <br />Collection of functions to simulate kinetic models for quartz
  luminescence production
  <br />![](https://img.shields.io/badge/-URL-lightgrey.svg) <https://github.com/pengjunUCAS/KMS>
  \| Source code: <https://github.com/pengjunUCAS/KMS> <br />
  *<small>Peng, J., Pagonis, V., 2016. Simulating comprehensive kinetic
  models for quartz luminescence using the R program KMS. Radiation
  Measurements 86, 63–70. doi:
  <https://doi.org/10.1016/j.radmeas.2016.01.022></small>*
  <hr/>
- <b><big>RLumCarlo</b></big>
  \[0.1.9\] ![](images/osi_logo.png) <img width=79px src='images/badges_r_package.svg' /> <img width=70px src='images/badges_sta_stable.svg' /> ![](https://img.shields.io/badge/-WIN-lightgrey.svg) ![](https://img.shields.io/badge/-MAC-lightgrey.svg) ![](https://img.shields.io/badge/-LIN-lightgrey.svg) 
  <br />A collection of functions to simulate luminescence production in
  dosimetric materials using Monte Carlo methods. Implemented are models
  for delocalised transitions (e.g., Chen and McKeever (1997)
  <doi:10.1142/2781>), localised transitions (e.g., Pagonis et
  al. (2019) <doi:10.1016/j.jlumin.2018.11.024>) and tunnelling
  transitions (Jain et al. (2012) <doi:10.1088/0953-8984/24/38/385402>
  and Pagonis et al. (2019) <doi:10.1016/j.jlumin.2018.11.024>).
  Supported stimulation methods are thermal luminescence (TL),
  continuous-wave optically stimulated luminescence (CW-OSL),
  linearly-modulated optically stimulated luminescence (LM-OSL),
  linearly-modulated infrared stimulated luminescence (LM-IRSL), and
  isothermal luminescence (ITL or ISO-TL).
  <br />![](https://img.shields.io/badge/-URL-lightgrey.svg) <https://CRAN.R-project.org/package=RLumCarlo>
  \| Source code: <https://github.com/R-Lum/RLumCarlo>
  <hr/>
- <b><big>RLumModel</b></big>
  \[0.2.10\] ![](images/osi_logo.png) <img width=79px src='images/badges_r_package.svg' /> <img width=70px src='images/badges_sta_stable.svg' /> ![](https://img.shields.io/badge/-WIN-lightgrey.svg) ![](https://img.shields.io/badge/-MAC-lightgrey.svg) ![](https://img.shields.io/badge/-LIN-lightgrey.svg) 
  <br />A collection of functions to simulate luminescence signals in
  quartz and Al2O3 based on published models.
  <br />![](https://img.shields.io/badge/-URL-lightgrey.svg) <https://CRAN.R-project.org/package=RLumModel>
  \| Source code: <https://github.com/R-Lum/RLumModel> <br />
  *<small>Friedrich, J., Kreutzer, S., Schmidt, C., 2016. Solving
  ordinary differential equations to understand luminescence:
  “RLumModel” an advanced research tool for simulating luminescence in
  quartz using R. Quaternary Geochronology 35, 88–100. doi:
  <https://doi.org/10.1016/j.quageo.2016.05.004></small>*
  <hr/>
- <b><big>sandbox</b></big>
  \[0.2.1\] ![](images/osi_logo.png) <img width=79px src='images/badges_r_package.svg' /> <img width=70px src='images/badges_sta_stable.svg' /> ![](https://img.shields.io/badge/-WIN-lightgrey.svg) ![](https://img.shields.io/badge/-MAC-lightgrey.svg) ![](https://img.shields.io/badge/-LIN-lightgrey.svg) 
  <br />A flexible framework for definition and application of
  time/depth- based rules for sets of parameters for single grains that
  can be used to create artificial sediment profiles. Such profiles can
  be used for virtual sample preparation and synthetic, for instance,
  luminescence measurements.
  <br />![](https://img.shields.io/badge/-URL-lightgrey.svg) <https://CRAN.R-project.org/package=sandbox>
  \| Source code: <https://github.com/coffeemuggler/sandbox>
  <hr/>

### Plotting

- <b><big>RLumShiny</b></big>
  \[0.2.3\] ![](images/osi_logo.png) <img width=79px src='images/badges_r_package.svg' /> <img width=70px src='images/badges_sta_stable.svg' /> ![](https://img.shields.io/badge/-WIN-lightgrey.svg) ![](https://img.shields.io/badge/-MAC-lightgrey.svg) ![](https://img.shields.io/badge/-LIN-lightgrey.svg) 
  <br />A collection of ‘shiny’ applications for the R package
  ‘Luminescence’. These mainly, but not exclusively, include
  applications for plotting chronometric data from e.g. luminescence or
  radiocarbon dating. It further provides access to bootstraps tooltip
  and popover functionality and contains the ‘jscolor.js’ library with a
  custom ‘shiny’ output binding.
  <br />![](https://img.shields.io/badge/-URL-lightgrey.svg) <https://CRAN.R-project.org/package=RLumShiny>
  \| Source code: <https://github.com/tzerk/RLumShiny> <br />
  *<small>Burow, C., Kreutzer, S., Dietze, M., Fuchs, M.C., Fischer, M.,
  Schmidt, C., Brückner, H., 2016. RLumShiny - A graphical user
  interface for the R Package ’Luminescence’. Ancient TL 34, 22–32.
  <http://ancienttl.org/ATL_34-2_2016/ATL_34-2_Burow_p22-32.pdf></small>*
  <hr/>

### Teaching

- <b><big>LumReader</b></big>
  \[0.1.0\] \[27/01/2017\] ![](images/osi_logo.png) <img width=79px src='images/badges_r_package.svg' /> <img width=70px src='images/badges_sta_ancient.svg' /> ![](https://img.shields.io/badge/-WIN-lightgrey.svg) ![](https://img.shields.io/badge/-MAC-lightgrey.svg) ![](https://img.shields.io/badge/-LIN-lightgrey.svg) 
  <br />A series of functions to estimate the detection windows of a
  luminescence reader based on the filters and the photomultiplier (PMT)
  selected. These functions also allow to simulate a luminescence
  experiment based on the thermoluminesce (TL) or the optically
  stimulated luminescence (OSL) properties of a material
  <br />![](https://img.shields.io/badge/-URL-lightgrey.svg) <https://CRAN.R-project.org/package=LumReader>
  \| Source code: <https://github.com/dstreble/LumReader>
  <hr/>

### Visualisation

- <b><big>DensityPlotter</b></big>
  \[8.5\] <img width=79px src='images/badges_application.svg' /> <img width=70px src='images/badges_sta_stable.svg' /> ![](https://img.shields.io/badge/-WIN-lightgrey.svg) ![](https://img.shields.io/badge/-MAC-lightgrey.svg) ![](https://img.shields.io/badge/-LIN-lightgrey.svg) 
  <br />Java application for Kernel Density Estimation plots
  <br />![](https://img.shields.io/badge/-URL-lightgrey.svg) <https://www.ucl.ac.uk/~ucfbpve/densityplotter/>
  <br /> *<small>Vermeesch, P., 2012. On the visualisation of detrital
  age distributions. Chemical Geology, 312-313, 190-194, doi:
  <https://doi.org/10.1016/j.chemgeo.2012.04.021></small>*
  <hr/>
- <b><big>RadialPlotter</b></big>
  \[9.5\] <img width=79px src='images/badges_application.svg' /> <img width=70px src='images/badges_sta_stable.svg' /> ![](https://img.shields.io/badge/-WIN-lightgrey.svg) ![](https://img.shields.io/badge/-MAC-lightgrey.svg) ![](https://img.shields.io/badge/-LIN-lightgrey.svg) 
  <br />Java software to create radial plots
  <br />![](https://img.shields.io/badge/-URL-lightgrey.svg) <https://www.ucl.ac.uk/~ucfbpve/radialplotter/>
  <br /> *<small>Vermeesch, P., 2009, RadialPlotter: a Java application
  for fission track, luminescence and other radial plots, Radiation
  Measurements, 44 (4), 409-410. doi:
  <https://doi.org/10.1016/j.radmeas.2009.05.003></small>*
  <hr/>

# Legend

| Icon                                                | Meaning                                          |
|-----------------------------------------------------|--------------------------------------------------|
| \[0.1\]                                             | Indicates the latest available version, here 0.1 |
| ![](images/osi_logo.png)                            | This software is open source                     |
| <img width=60px src='images/badges_r_package.svg'/> | Type of software (here: R package)               |

Some of the badges are created using <https://shields.io>.
