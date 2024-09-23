FROM nginx:latest

ENV HOME=/home/app
ENV APP_HOME=/home/app/web

# Create parent directory first
RUN mkdir -p $HOME

# Now create the web directory
RUN mkdir $APP_HOME

# Create staticfiles directory
RUN mkdir $APP_HOME/staticfiles

WORKDIR $APP_HOME

RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d