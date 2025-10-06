FROM python:3.12-slim

WORKDIR /work

RUN pip install --no-cache-dir \
    jupyterlab ipykernel pandas numpy sqlalchemy psycopg2-binary

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--no-browser"]