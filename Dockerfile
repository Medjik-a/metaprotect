FROM python:3.8
# Set environment variables
ARG ENV_FILE
ENV ENV_FILE=${ENV_FILE:-.env}

# Install the SQL Server ODBC driver

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt
WORKDIR /tmp
COPY . .
RUN pip install pyarmor
RUN pyarmor gen --recursive . -O protected
RUN pip uninstall -y pyarmor pyarmor.cli.core
RUN mkdir /app && mv protected /app/
RUN rm -rf /tmp
WORKDIR /app
CMD [ "python", "protected/main.py" ]