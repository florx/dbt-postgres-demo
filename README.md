# dbt-postgres-demo

## Introduction

I've thrown a quick demo together to help me learn about [dbt](https://www.getdbt.com/) with a Postgres database.

The demo:
1. Starts a database (postgres)
1. Creates tables and imports a dataset
1. Sets up a DBT project and profile
1. Creates relevant models/views

:warning: **As this is a demo, it's not fit for production use.** I've deliberately put the `dbt-profiles` and `database.env` inside this repo to make it easy for a quickstart. These both contain secrets, which if were real, should **_never_** end up in Git. Ever.

## Quick Start

Run: `make all`

## Prerequisites

Commands have been written and tested on MacOS Big Sur.

* `brew install dbt`
* Docker Desktop & CLI tools (`docker-compose`)
* Postgres CLI tools (`pgsql`)

## Acknowledgements

`setup/prices-data-2020.csv` is from [GOV.UK Price Paid Data](https://www.gov.uk/government/statistical-data-sets/price-paid-data-downloads) and is licensed under [Open Government Licence (OGL)](
http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/)