FROM confluentinc/cp-kafka-connect:latest

RUN confluent-hub install --no-prompt mongodb/kafka-connect-mongodb:latest
RUN confluent-hub install --no-prompt confluentinc/connect-transforms:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-datagen:latest
