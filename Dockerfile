FROM python:3.11

WORKDIR /code

RUN pip install --upgrade pip
RUN pip install --no-cache-dir edubotics_core
RUN pip install chainlit
RUN pip install literalai

COPY . /code

# List the contents of the /code directory to verify files are copied correctly
RUN ls -R /code

# Change permissions to allow writing to the directory
RUN chmod -R 777 /code

# Create a logs directory and set permissions
RUN mkdir /code/apps/ai_tutor/logs && chmod 777 /code/apps/ai_tutor/logs

# Create a cache directory within the application's working directory
RUN mkdir /.cache && chmod -R 777 /.cache

WORKDIR /code/apps/ai_tutor

# Expose the port the app runs on
EXPOSE 7860

# Default command to run the application
CMD vectorstore_creator --config_file config/config.yml --project_config_file config/project_config.yml && python -m uvicorn app:app --host 0.0.0.0 --port 7860
