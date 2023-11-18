# Python Data Science Template

[![Codespaces Prebuilds](https://github.com/nogibjj/python-data-science-template-v2/actions/workflows/codespaces/create_codespaces_prebuilds/badge.svg)](https://github.com/nogibjj/python-data-science-template-v2/actions/workflows/codespaces/create_codespaces_prebuilds) 

[![CI](https://github.com/nogibjj/python-data-science-template-v2/actions/workflows/main.yml/badge.svg)](https://github.com/nogibjj/python-data-science-template-v2/actions/workflows/main.yml)

# Overview

This project performs a sample End-to-End Data Pipeline in Databricks. The sample data is loaded from Databricks and the notebooks used for processing are saved in this Github Repository in the Notebooks folder.

A Databricks workflow is setup to run the notbooks in sequence to simulate the End-to-End workflow.

Github actions automatically performs the CICD workflows whenever there is a change in the repository.

# Data

The dataset is a toy dataset of a million songs provided by Databricks itself. Below is a sample snapshot.

![Data Sample](images/Data%20Sample.png)


# ETL Pipeline

The below shows the ETL Pipeline that is schedule set to trigger at a certain time of day everyday. It has three tasks:
- Data Ingestion | [Ingest songs data.ipynb](src/Ingest%20songs%20data.ipynb)
- Preparation | [Prepare Raw Data.sql](src/Prepare%20Raw%20Data.sql)
- Querying | [Query Data.sql](src/Query%20Data.sql)

![ETL Job](images/ETL%20Pipeline.png)