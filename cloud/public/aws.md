# AWS

## Prices

### Spot Instances

* https://medium.com/swlh/mastering-the-aws-spot-instance-2ecf59e242fa
* https://docs.aws.amazon.com/de_de/AWSEC2/latest/UserGuide/using-spot-instances-history.html

#### Spot prices

* https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeSpotPriceHistory.html
* https://docs.aws.amazon.com/AWSJavaSDK/latest/javadoc/com/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest.html

## Tech Stack

### VM (ec2, lightsail)

* https://www.vpsbenchmarks.com/compare/ec2_vs_lightsail
  + https://aws.amazon.com/de/lightsail/pricing/

### AWS Container (ecs, fargate)

* https://aws.amazon.com/de/ecs
* https://aws.amazon.com/de/fargate/

## AWS Development

* [Retrieve metadata](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instancedata-data-retrieval.html)
### AWS CLI

* [Loading AWS CLI parameters from a file](https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters-file.html)
* [Generating AWS CLI skeleton](https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-skeleton.html)

### SDKs

* https://aws.amazon.com/de/getting-started/tools-sdks/

#### AWS Java SDK

* https://aws.amazon.com/de/sdk-for-java/
* https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/home.html
* https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/asynchronous.html
* [apidocs](https://sdk.amazonaws.com/java/api/latest/)
* https://docs.aws.amazon.com/sdk-for-java/v1/developer-guide/examples-ec2-instances.html

#### AWS Python SDK (boto3)

* https://github.com/boto/boto3

## Services

### ECS

#### ECS and docker-compose

* https://aws.amazon.com/de/blogs/containers/deploy-applications-on-amazon-ecs-using-docker-compose/
* [docker compose ecs examples](https://docs.docker.com/cloud/ecs-compose-examples/)
* https://www.docker.com/blog/docker-compose-from-local-to-amazon-ecs/
* https://www.docker.com/blog/docker-compose-for-amazon-ecs-now-available/
* [ecs-cli compose](https://github.com/aws/amazon-ecs-cli)
* [copilot](https://github.com/aws/copilot-cli)
  + https://aws.github.io/copilot-cli/docs/overview/
  + https://github.com/aws-samples/aws-copilot-sample-service

#### service discovery

* [java dns srv](https://stackoverflow.com/questions/10138844/java-dns-lookup-for-srv-records)
  + https://github.com/dnsjava/dnsjava
  + https://maheshsenniappan.medium.com/host-name-resolution-in-java-80301fea465a


#### Fargate

* https://aws.amazon.com/de/fargate/
