FROM python:3.11

# Change permissions to allow writing to the directory
RUN chmod -R 777 /apps/ai_tutor

WORKDIR /apps/ai_tutor

RUN pip install --upgrade pip
RUN pip install edubotics-core

# Create a logs directory and set permissions
RUN mkdir logs && chmod 777 logs

# Create a cache directory within the application's working directory
RUN mkdir /.cache && chmod -R 777 /.cache

# Expose the port the app runs on
EXPOSE 7860

RUN --mount=type=secret,id=HUGGINGFACEHUB_API_TOKEN,mode=0444,required=true 
RUN --mount=type=secret,id=OPENAI_API_KEY,mode=0444,required=true 
RUN --mount=type=secret,id=CHAINLIT_URL,mode=0444,required=true 
RUN --mount=type=secret,id=LITERAL_API_URL,mode=0444,required=true 
RUN --mount=type=secret,id=LLAMA_CLOUD_API_KEY,mode=0444,required=true 
RUN --mount=type=secret,id=OAUTH_GOOGLE_CLIENT_ID,mode=0444,required=true 
RUN --mount=type=secret,id=OAUTH_GOOGLE_CLIENT_SECRET,mode=0444,required=true 
RUN --mount=type=secret,id=LITERAL_API_KEY_LOGGING,mode=0444,required=true 
RUN --mount=type=secret,id=CHAINLIT_AUTH_SECRET,mode=0444,required=true 

# Default command to run the application
CMD vectorstore_creator --config_file config/config.yml --project_config_file config/project_config.yml && python app.py