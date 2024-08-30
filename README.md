---
title: DS701 AI Tutor
description: An LLM based class tutor with RAG for Tools4DS course
emoji: 🎓
colorFrom: red
colorTo: green
sdk: docker
app_port: 7860
---

# DS701: Tools for Data Science - Education Chatbot

## Overview

This repository contains an LLM-based chatbot designed for the [DS701: Tools for Data Science](https://tools4ds.github.io/fa2024/) course at Boston University. The chatbot serves as an interactive learning assistant, helping students with course-related queries, explanations of concepts, and guidance on data science tools. It is powered by [edubotics-core](https://github.com/edubotics-ai/edubotics-core) a package of modules for data loading, vector store creation and management.

The chatbot will be available on HuggingFace Spaces soon. Lecture slides are available [here](https://tools4ds.github.io/DS701-Course-Notes/).

## Features

- 24/7 availability for student queries
- Explanations of key data science concepts
- Guidance on using data science tools and libraries
- Practice problem suggestions and explanations
- Course syllabus and schedule information

## Getting Started Locally

To run the chatbot locally, follow these steps:

1. Clone this repository

   `git clone https://github.com/tools4ds/ds701-tutor.git`

2. Set up your Python environment

   a. Using venv (Python's built-in virtual environment):

   ```python
   python -m venv ds701_env
   source ds701_env/bin/activate  # On Windows, use: ds701_env\Scripts\activate
   pip install -r requirements.txt
   ```

   b. Using Conda:

   ```python
   conda create --name ds701_env python=3.9
   conda activate ds701_env
   conda install --file requirements.txt
   ```

Note: Make sure to use Python 3.9 or later.

3. Install dependencies

   `pip install edubotics-core`

4. Set up environment variables. See `apps/ai_tutor/.env.example` for reference.

5. Run the chatbot

   ```python
    cd apps/ai-tutor
    python app.py
   ```

   and navigate to localhost:8000 in your browser.

## Usage

Students can interact with the chatbot through the web interface.

Example queries:

- "Explain the concept of data normalization"
- "How do I use pandas for data manipulation?"
- "What's the difference between supervised and unsupervised learning?"

## Contributing

We welcome contributions from the community to enhance the DS701 AI Tutor. Whether you're a student, instructor, or developer, your input is valuable. Here's how you can contribute:

1. Fork the repository and create your feature branch.
2. Make your changes, ensuring they align with the project's goals.
3. Submit a pull request with a clear description of your improvements.

For more detailed information on the contribution process, please refer to our `CONTRIBUTING.md` file (unavailable yet).

## Privacy and Data Handling

This chatbot is designed with student privacy in mind. No personal information is stored, and all interactions are anonymized. For more details, please refer to our `PRIVACY_POLICY.md`.

## Support

If you encounter any issues or have suggestions for improvement, please open an issue in this repository or contact the course instructor.

## License

This project is licensed under the MIT License - see the `LICENSE.md` file for details.
