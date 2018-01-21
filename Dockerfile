# Start with Debian
From debian:stable

# Update the repository cache and install a dependency
RUN apt-get update && apt-get install -y apt-transport-https wget gnupg

# Add the Zcash master signing key to apt's trusted keyring
RUN wget -qO - https://apt.z.cash/zcash.asc | apt-key add -

# Add the Zcash repository to apt's list of sources
RUN echo "deb [arch=amd64] https://apt.z.cash/ jessie main" | tee /etc/apt/sources.list.d/zcash.list

# Update the sources cache and install Zcash
RUN apt-get update && apt-get install -y zcash

# Download "parameters used to create and verify shielded transactions"
RUN zcash-fetch-params

# And finally: start zcash
ENTRYPOINT zcashd
