# AWS

* [AWS architecture examples](https://aws.amazon.com/de/architecture/)
* [AWS samples](https://github.com/aws-samples)

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
* [T2 unlimited ec2 mode](https://aws.amazon.com/de/blogs/aws/new-t2-unlimited-going-beyond-the-burst-with-high-performance/)
* [serverless or kubernetes](https://aws.amazon.com/de/getting-started/decision-guides/serverless-or-kubernetes-on-aws-how-to-choose/)

### AWS Container (ecs, fargate)

* https://aws.amazon.com/de/ecs
* https://aws.amazon.com/de/fargate/
* [FireLens](https://docs.aws.amazon.com/app2container/latest/UserGuide/firelens-setup-linux.html) protocol / log routing for container
  + [AWS container image for FireLens fluentd](https://github.com/aws/aws-for-fluent-bit)
* [Monitor Amazon ECS using CloudWatch](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cloudwatch-metrics.html)

## AWS Development

* [Retrieve metadata](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instancedata-data-retrieval.html)
* [AWS Builder ID](https://docs.aws.amazon.com/toolkit-for-visual-studio/latest/user-guide/builder-id.html) is a new account type with the following features:
* use [Amazon Q](https://aws.amazon.com/de/q/) (preview)
  + will be commercial (soon?), see https://aws.amazon.com/de/q/pricing/
* use [CodeWhisperer](https://aws.amazon.com/de/codewhisperer/)
  + Works with VS Code, Idea, CLI, and other, see https://aws.amazon.com/de/codewhisperer/resources/#Getting_started/
  + [What is CodeWhisperer](https://docs.aws.amazon.com/codewhisperer/latest/userguide/what-is-cwspr.html)
  + [supported languages](https://docs.aws.amazon.com/codewhisperer/latest/userguide/language-ide-support.html)
  + [view code references (or opt-out)](https://docs.aws.amazon.com/codewhisperer/latest/userguide/code-reference.html#opt-out-code-reference)
* Use [CodeCatalyst](https://codecatalyst.aws/explore)
  + [setup](https://docs.aws.amazon.com/codecatalyst/latest/userguide/setting-up-topnode.html)
  + collaborate
  + use [dev environments](https://codecatalyst.aws/explore/dev-environments)
  + use [blueprints](https://codecatalyst.aws/explore/blueprints)
  + [tutorial: three-tier web application blueprint](https://docs.aws.amazon.com/codecatalyst/latest/userguide/getting-started-template-project.html)
  + [extensions](https://docs.aws.amazon.com/codecatalyst/latest/userguide/extensions.html)
* [AWS Toolkit Idea Plugin](https://docs.aws.amazon.com/toolkit-for-jetbrains/latest/userguide/working-with-aws.html)

### AWS session manager

Connect to a AWS node (e.g. an ec2 instance) with ssh.

```bash
sudo dnf install -y https://s3.amazonaws.com/session-manager-downloads/plugin/latest/linux_64bit/session-manager-plugin.rpm
aws ssm start-session --target <target-id>
```

* [session manager](https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager.html) plugin to AWS CLI
* [install session manager plugin for AWS CLI](https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-install-plugin.html)
* [setup session manager](https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-getting-started.html)
* [what is systems manager](https://docs.aws.amazon.com/systems-manager/latest/userguide/what-is-systems-manager.html) AWS hybrid and multicloud solution

### AWS CLI

* [install AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)
* [command completion for AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-completion.html)
* [env for AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-envvars.html)
* [Loading AWS CLI parameters from a file](https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters-file.html)
* [Generating AWS CLI skeleton](https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-skeleton.html)
* [AWS Scala](https://github.com/seratch/AWScala) alternative CLI based on Scala
  + https://www.baeldung.com/scala/awscala-aws-sdk-for-scala

### AWS provisioning

More on general provisioning in `./public-cloud.md`.

* [CloudFormation or CDK](https://dinma.medium.com/choosing-between-aws-cdk-and-cloudformation-9f935fdaa8ec)
* [CloudFormation vs CDK vs terraform](https://www.pluralsight.com/resources/blog/cloud/cloudformation-terraform-or-cdk-guide-to-iac-on-aws)
* [CDK vs CloudFormation](https://blog.shikisoft.com/aws-cdk-vs-cloudformation/)

#### CDK

* [CDK getting started](https://docs.aws.amazon.com/cdk/v2/guide/getting_started.html)
* [What is CDK](https://docs.aws.amazon.com/cdk/v2/guide/home.html)
* [CDK ECS example](https://docs.aws.amazon.com/cdk/v2/guide/ecs_example.html)
  + [CDK deployment to ECS](https://mitchellgritts.com/articles/aws-cdk-simple-ecs-deployment/)

#### troposphere

troposphere is the CDK idea - but independently implemented by the community 
for python only. It is used by ecs-compose-x.

* [troposphere](https://github.com/cloudtools/troposphere)

### SDKs

* https://aws.amazon.com/de/getting-started/tools-sdks/
* [kotlin SDK](https://aws.amazon.com/de/sdk-for-kotlin/)
  + [kotlin SDK coroutine support](https://docs.aws.amazon.com/sdk-for-kotlin/latest/developer-guide/coroutines.html)
  + [docs](https://docs.aws.amazon.com/sdk-for-kotlin/latest/developer-guide/get-started.html)
  + https://github.com/awslabs/aws-sdk-kotlin
* [AWScala](https://www.baeldung.com/scala/awscala-aws-sdk-for-scala) AWS SDK for Scala

#### AWS Java SDK

* https://aws.amazon.com/de/sdk-for-java/
* https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/home.html
* https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/asynchronous.html
* [apidocs](https://sdk.amazonaws.com/java/api/latest/)
* https://docs.aws.amazon.com/sdk-for-java/v1/developer-guide/examples-ec2-instances.html

#### AWS Python SDK (boto3)

* https://github.com/boto/boto3

## Services

### Load balancer

* [pricing load balancer](https://aws.amazon.com/de/elasticloadbalancing/pricing/) best practice AWS templates

### EC2

* [run docker on EC2](https://medium.com/appgambit/part-1-running-docker-on-aws-ec2-cbcf0ec7c3f8)

### ECS

#### ECS and docker-compose

* https://stackoverflow.com/questions/61122181/terraform-deploying-a-docker-compose-app-on-eks-ecs
* https://aws.amazon.com/de/blogs/containers/deploy-applications-on-amazon-ecs-using-docker-compose/
* [docker compose ecs examples](https://docs.docker.com/cloud/ecs-compose-examples/)
* https://www.docker.com/blog/docker-compose-from-local-to-amazon-ecs/
* https://www.docker.com/blog/docker-compose-for-amazon-ecs-now-available/
* [ecs-cli compose](https://github.com/aws/amazon-ecs-cli)

##### copilot

* [copilot CLI](https://github.com/aws/copilot-cli)
  + [copilot](https://aws.amazon.com/de/containers/copilot/)
  + [AWS copilot CLI documentation](https://aws.github.io/copilot-cli/docs/overview/)
  + [copilot in AWS ECS documentation](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/getting-started-aws-copilot-cli.html)
  + https://aws.github.io/copilot-cli/docs/overview/
  + https://github.com/aws-samples/aws-copilot-sample-service
  + [copilot community](https://aws.github.io/copilot-cli/community/get-involved/)

##### compose-x

* [compose-x](https://github.com/compose-x)
  + [motivation](https://ecs-composex.readthedocs.io/story.html#why-am-i-not-using-aws-cdk)
  + [labs / examples](https://github.com/compose-x/compose-x-labs)
    - [labs documentation](https://labs.compose-x.io/index.html)
  + [ecs-compose-x](https://github.com/compose-x/ecs_composex)
    - [ecs-compose-x documentation](https://docs.compose-x.io/)
    - [supported ECS/fargate features](https://ecs-composex.readthedocs.io/compatibility/aws_ecs.html)
    - [supported docker-compose features](https://ecs-composex.readthedocs.io/compatibility/docker_compose.html)
  + [ecs-file-composer](https://github.com/compose-x/ecs-files-composer)
    - [ecs-file-composer documentation](https://docs.files-composer.compose-x.io/)
  + [wordpress demo](https://github.com/compose-x/wordpress-demo)
    - https://github.com/compose-x/wordpress-demo/pull/2
* [ecr scan reporter](https://ecr-scan-reporter.compose-x.io/) Serverless Application to monitor ECR Repositories and capture scan results
* [CodePipeline-orchestra](https://github.com/compose-x/codepipline-orchestra) tools that make usage of AWS CodePipeline/CodeBuild and other AWS Developer 

#### service discovery

* [java dns srv](https://stackoverflow.com/questions/10138844/java-dns-lookup-for-srv-records)
  + https://github.com/dnsjava/dnsjava
  + https://maheshsenniappan.medium.com/host-name-resolution-in-java-80301fea465a


#### Fargate

* https://aws.amazon.com/de/fargate/

### AWS agents and other (special) software

* [ecs agent](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-install.html)
* [ssm agent](https://docs.aws.amazon.com/de_de/systems-manager/latest/userguide/ssm-agent.html)
* [CloudWatch agent](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Install-CloudWatch-Agent.html)
  + https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Install-CloudWatch-Agent-New-Instances-CloudFormation.html
* [CodeDeploy agent](https://docs.aws.amazon.com/codedeploy/latest/userguide/codedeploy-agent.html)
* [Inspector agents](https://docs.aws.amazon.com/de_de/inspector/latest/userguide/inspector_installing-uninstalling-agents.html)
* [Kinesis agent](https://docs.aws.amazon.com/de_de/streams/latest/dev/writing-with-agents.html)
* [SAM CLI](https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/serverless-sam-cli-install.html) serverless / lambda deployment CLI
  + [docs](https://aws.amazon.com/de/serverless/sam/)
  + [CLI reference](https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/serverless-sam-cli-command-reference.html)
  + [github sam](https://github.com/aws/aws-sam-cli)
* [java SQS request-response library](https://github.com/awslabs/amazon-sqs-java-temporary-queues-client)
  + https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-temporary-queues.html
* [app2container(https://docs.aws.amazon.com/app2container/) CLI to pack java and .NET apps into container images

### IAM

* [ConsoleMe](https://github.com/Netflix/consoleme) netflix stack, make use of IAM simpler
  + [weep](https://github.com/Netflix/weep) retrieve AWS credentials

### AWS new topics

* [CloudTrail organization trail](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/creating-trail-organization.html)
* [Gateway load balancer GWLB](https://aws.amazon.com/de/blogs/aws/introducing-aws-gateway-load-balancer-easy-deployment-scalability-and-high-availability-for-partner-appliances/)
* [elastic network](https://aws.amazon.com/de/blogs/aws/new-elastic-network-interfaces-in-the-virtual-private-cloud/)
* [AWS IoT core](https://aws.amazon.com/de/iot-core/features/?pg=ln&sec=hs)

### lambda/serverless

* [sam cli](https://aws.amazon.com/de/serverless/sam/)
* https://docs.aws.amazon.com/cdk/api/v2/ typescript, js, python, java, c#, .net
  + [AWS Cloud Development Kit](https://docs.aws.amazon.com/cdk/v2/guide/home.html)
* [copilot](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/AWS_Copilot.html) ecs tool
* [mutato](https://stelligent.github.io/mutato/#/)
  + https://github.com/stelligent/mutato

### EKS (kubernetes)

* https://aws.amazon.com/de/eks/getting-started/


## Eucalyptus (AWS compatible private cloud)

* [eucalyptus cloud](https://www.eucalyptus.cloud/) AWS compatible IaaS
  + https://wiki.debian.org/Eucalyptus

```bash
```

```bash
```

```bash
```
