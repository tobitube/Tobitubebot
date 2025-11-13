# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
# This includes bot.py and requirements.txt
COPY . .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# The port exposed by the Flask server
# (Even though the Pyrogram bot is main, the Flask server is exposed)
EXPOSE 8080

# Run bot.py when the container launches
# bot.py file starts both Flask and Pyrogram Bot
CMD ["python", "bot.py"]
