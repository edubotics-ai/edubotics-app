<p align="center">
  <a href="http://docs.edubotics.ai/">
    <img src="https://github.com/edubotics-ai/.github/blob/main/assets/images/edubot-mascot.png?raw=true" alt="edubotics-ai" width="10%" height="10%">
  </a>
</p>
<p align="center">
    <em>Edubotics AI - Empower Education with AI: Create Intelligent Chatbots Quickly and Efficiently</em>
</p>
<p align="center">   
  <a href="https://github.com/edubotics-ai/edubotics-app/blob/main/LICENSE">
    <img src="https://img.shields.io/github/license/edubotics-ai/edubotics-app.svg">
  </a>
  <img src="https://img.shields.io/github/stars/edubotics-ai/edubotics-app.svg">
  <a href="https://discord.com/channels/1293271626036805653">
    <img alt="Discord" src="https://img.shields.io/discord/1293271626036805653?style=flat&logo=discord&label=Discord">
  </a>

</p>

# Edubotics-Core Setup

This repository is an example of how to build an application that incorporates the `edubotics-core` package. We suggest you fork this repository and
then adapt it your application domain.

## Installation

To install `edubotics-core`, run the following command:

```bash
pip install edubotics-core
```

## Documentation

For detailed instructions on the initial setup (setting up .env file, required Keys, etc), please refer to our [documentation](http://docs.edubotics.ai).

## Templates

To get started, check out the templates located in the `apps/` directory.

## Config Files

- **config.yml**: This file controls various chatbot settings such as the default vector store and architecture type.
- **project_config.yml**: Use this file to customize settings specific to your project.

## Create Your Vectorstore

Once you have set up your config files, you can create your vector store by running:

```bash
vectorstore_creator --config_file path_to_your_config.yml --project_config_file path_to_your_project_config.yml
```

## Start Your App

After creating your vector store, you can start up your app and get going!
