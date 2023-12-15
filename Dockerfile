# Base image
FROM ruby:3.0

# Set the working directory 
WORKDIR /app

# Copy the application files to the container
COPY . .

# Install dependencies
RUN bundle install

# Expose the port on which the application will run
EXPOSE 4567 

# Start the application
CMD ["ruby", "main.rb"]
