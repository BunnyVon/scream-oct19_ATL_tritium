# from repo root on add_tritium_fate_transport
cat >> .gitignore <<'EOF'
# Local test inputs, caches, and logs
cime/CIME/non_py/cprnc/test_inputs/
**/__pycache__/
*.log

# COSP/UKMO driver artifacts
components/eam/src/physics/cosp2/external/driver/data/inputs/
components/eam/src/physics/cosp2/external/driver/data/outputs/

# RRTMGP cloud optics coeffs (generated/data files)
components/eam/src/physics/rrtmgp/external/extensions/cloud_optics/*.nc

# ELM sbetr vendored test data and inputs
components/elm/src/external_models/sbetr/3rd-party/netcdf-c/
components/elm/src/external_models/sbetr/3rd-party/netcdf-fortran/
components/elm/src/external_models/sbetr/3rd-party/netcdf-c/dap4_test/
components/elm/src/external_models/sbetr/3rd-party/netcdf-c/nc_test/
components/elm/src/external_models/sbetr/3rd-party/netcdf-c/nc_test4/
components/elm/src/external_models/sbetr/3rd-party/netcdf-c/ncdump/
components/elm/src/external_models/sbetr/3rd-party/netcdf-c/nctest/
components/elm/src/external_models/sbetr/input_data/
components/elm/src/external_models/sbetr/tools/*.nc
components/elm/src/external_models/sbetr/regression-tests/mtest/xfail/dummy.exe
components/eam/src/physics/rrtmgp/external/rrtmgp/data/
components/elm/src/external_models/sbetr/3rd-party/hdf5/tools/testfiles/test35.nc

# MPAS extras and caches
components/mpas-ocean/src/gotm/extras/netcdf/
components/mpas-ocean/src/SHTNS/doc/faq_01_divergence_freeness/__pycache__/

# CICE/eam/mosart/stub comps cime caches
components/*/cime_config/__pycache__/
driver-mct/cime_config/__pycache__/
share/build/__pycache__/

# Scorpio doc build outputs
externals/scorpio/doc/CMakeFiles/
EOF

git add .gitignore
git commit -m "Ignore local test inputs, caches, and data artifacts"
git push