FROM khulnasoft/meinheld-gunicorn:python3.9

LABEL maintainer="KhulnaSoft DevOps <info@khulnasoft.com>"

COPY requirements.txt /tmp/requirements.txt
RUN pip install --no-cache-dir -r /tmp/requirements.txt

COPY ./app /app
