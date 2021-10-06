# Introduction to Knowledge Graphs

![Powered by Jupyter Logo](https://cdn.oreillystatic.com/images/icons/powered_by_jupyter.png)

This project contains the Jupyter Notebooks and supporting files for _Introduction to Knowledge Graphs_ with Clair Sullivan. 

These notebooks can be run on the O'Reilly Learning Platform [here](https://learning.oreilly.com/jupyter-notebooks/~/${NOTEBOOK_FPID}).

It contains both the exercises (/notebooks), possibly the solutions (/solutions), as well as any data or files needed (/data). 

This is a public repository so there is no need to create an account to download its contents. To download the source code from this page, click the 'Cloud' icon on the top right hand, above where the latest commit is detailed.

To download via git from your preferred terminal application, type:

```git clone https://resources.oreilly.com/binderhub/introduction-to-knowledge-graphs```

# IMPORTANT INSTRUCTIONS FOR OCTOBER 7, 2021 COURSE RUNNING

Due to situations beyond our control, we are not able to run the course using the usual O'Reilly Jupyter notebook server.  Therefore, we will need to create a development environment
for this course on our local machines.  We apologize for the inconvenience!

## Steps

1. Install virtualenv (venv) if you do not already have it
```python3 -m pip3 install --user virtualenv```

2. Clone this repository
```git clone https://resources.oreilly.com/binderhub/introduction-to-knowledge-graphs```

3. Create a virtual environment in the repo top folder
```python3 -m venv my_env/ && source my_env/bin/activate```

4. Install requirements
```pip3 install -r requirements.txt```

5. Install Jupyter Lab
```pip3 install jupyterlab```

6. Download spacy dictionary
```python3 -m spacy download en_core_web_md```

7. Run Jupyter Lab
```jupyter lab```