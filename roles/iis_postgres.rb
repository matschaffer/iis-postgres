name "iis_postgres"
description "A demo deployment a postgres-dependent iis app"

default_attributes iis: { accept_eula: true }

run_list "recipe[iis]"
