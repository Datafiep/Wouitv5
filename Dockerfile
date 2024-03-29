FROM python:3.9

# Install Chromium
RUN apt-get update
RUN apt-get install -y chromium-driver

# Copy your application code
WORKDIR /app
COPY . /app

# Install Python dependencies
RUN pip install -r requirements.txt

# Run the Streamlit app
CMD streamlit run Welcome.py
