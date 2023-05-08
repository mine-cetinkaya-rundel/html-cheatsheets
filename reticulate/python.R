library(reticulate)
py_install("seaborn")
use_virtualenv("r-reticulate")

sns <- import("seaborn")

fmri <- sns$load_dataset("fmri")
dim(fmri)

# creates fmri
source_python("python.py")
dim(fmri)

# creates fmri in main
py_run_file("python.py")
dim(py$fmri)

py_run_string("print(fmri.shape)")




