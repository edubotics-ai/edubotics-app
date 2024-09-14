# Edubotics-Core Setup

## Installation

To install `edubotics-core`, run the following command:

```bash
pip install edubotics-core
```

## Documentation

For detailed instructions on the initial setup (setting up .env file, required Keys, etc), please refer to our [documentation](http://docs.edubotics.ai).

### Templates

To get started, check out the templates located in the `apps/` directory.

### Config Files

- **config.yml**: This file controls various chatbot settings such as the default vector store and architecture type.
- **project_config.yml**: Use this file to customize settings specific to your project.

## Create Your Vectorstore

Once you have set up your config files, you can create your vector store by running:

```bash
vectorstore_creator --config_file path_to_your_config.yml --project_config_file path_to_your_project_config.yml
```

## Start Your App

After creating your vector store, you can start up your app and get going!
