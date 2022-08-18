
 - Find out the default executor.
```
$ airflow config get-value core executor

CeleryExecutor
```
### Medium Link
https://christo-lagali.medium.com/implement-parallelism-in-airflow-375610219ba

![img.png](img.png)

```
$ airflow config get-value core parallelism
32
```

sudo docker exec -it airflow_playground_postgres_1 bash
su - postgres
psql -d airflow -U airflow

from sqlalchemy import create_engine
from sqlalchemy.sql import text
engine = create_engine('postgresql+psycopg2://airflow:airflow@172.31.31.35:5435/airflow')
conn = engine.connect()
conn.execute(text("SELECT * FROM log")).fetchall()


airflow jobs check --job-type SchedulerJob --hostname "$(hostname)"

airflow scheduler -D
airflow worker -D

celery --app airflow.executors.celery_executor.app inspect ping -d celery@${HOSTNAME}

    command: bash -c "airflow db init; airflow db upgrade; airflow webserver; airflow scheduler; airflow celery worker;"

airflow dags list

su - gis
CREATE USER airflow WITH ENCRYPTED PASSWORD 'airflow';
DROP DATABASE airflow;
CREATE DATABASE airflow;
GRANT ALL PRIVILEGES ON DATABASE airflow to airflow;
\q
