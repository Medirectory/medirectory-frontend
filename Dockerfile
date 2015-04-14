FROM node:0.10.36

# Copy the local package files to the container's workspace.
ADD . /node/medirectory-frontend

WORKDIR /node/ember-on-fhir
RUN git config -- global url."https://".insteadOf git://
RUN npm install -g ember-cli
RUN npm install -g bower
RUN npm install
RUN bower install --allow-root

RUN chmod 755 /node/medirectory-frontend/ember-entrypoint.sh
ENTRYPOINT ["/node/medirectory-frontend/ember-entrypoint.sh"]

# Document that the service listens on port 4200.
