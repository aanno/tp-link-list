# ECS

## Registry

* In AWS speak, a registry is for ONE image (in several versions)
* By default there is ONE private registry _server_ per root account
* Name is \<aaid/alias\>.dkr.ecr.eu-central-1.amazonaws.com

### Registry login

There are 2 options:
1. Use [get-login-password](https://docs.aws.amazon.com/AmazonECR/latest/userguide/registry_auth.html)
   ```bash
aws ecr get-login-password --region region | docker login --username AWS --password-stdin aws_account_id.dkr.ecr.region.amazonaws.com
   ```
   The login obtained is valid for 12h and stored in `~/.docker/config.json`.
2. Use [docker-credential-ecr-login](https://github.com/awslabs/amazon-ecr-credential-helper/releases) <br/>
   For this you have to edit `~/.docker/config.json` like this:
   ```bash
{
	"credHelpers": {
		"986139801873.dkr.ecr.eu-central-1.amazonaws.com": "ecr-login",
		"public.ecr.aws": "ecr-login"
	}
}
   ```
   Certainly, `docker-credential-ecr-login` has to be installed (and in your path).
   Normally, `ecs-login` will look up `~/.aws/credentials` and will respect the
   AWS_PROFILE environment variable.
   
### references registry and login

* https://github.com/GoogleContainerTools/jib/tree/master/jib-maven-plugin#using-docker-credential-helpers
* https://docs.docker.com/engine/reference/commandline/login/
* https://www.passwordstore.org/

## Use ecs-cli

```
$ ecs-cli configure --cluster toyotamatching --config-name toyota --default-launch-type EC2 --region eu-central-1
$ ecs-cli configure default --config-name toyota
$ ecs-cli configure profile --access-key AWS_ACCESS_KEY_ID --secret-key AWS_SECRET_ACCESS_KEY --profile-name ec2-tutorial
```

### Attention

According to https://github.com/aws/amazon-ecs-cli/issues/1129 `ecs-cli` is
_not_ maintained well. See alternatives for possible replacements.

Configuring service discovery with `ecs-cli` is documented (and there is even
a tutorial for that) but does not work as expected. See https://github.com/aws/amazon-ecs-cli/issues/1130
for details.

### starting an instance

* Given: You are in a folder with a `docker-compose.yml` and `ecs-params.yml` file.
* `ecs-cli compose` starts a compose definition as 'task' (not as 'service')

```bash
# list all images on your registry server
ecs-cli images
# pull image
ecs-cli pull 986139801873.dkr.ecr.eu-central-1.amazonaws.com/toyotamatching
# show running composes
ecs-cli compose -p <project_name> ps
# show all running in cluster
ecs-cli ps
# start your compose task
ecs-cli compose -p <project_name> up
# stop your compose task
ecs-cli compose -p <project_name> stop
# start your compose service
ecs-cli compose -p <project_name> service up
# stop your compose service
ecs-cli compose -p <project_name> service stop
```

### service discovery

Get namespace id:

```bash
aws servicediscovery list-namespaces
```

### references ecs-cli and docker-compose

* https://docs.docker.com/compose/compose-file/compose-file-v3/
* https://docs.aws.amazon.com/de_de/AmazonECS/latest/developerguide/cmd-ecs-cli-compose-ecsparams.html
* https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html
* https://github.com/aws/amazon-ecs-cli


## login into an ecs cloud instance

* you need the private ssh key the instance of 'ecs amazon linux 2 (ecs optimized) was started with
* key should not be group or other accessible
* you can't rename the key file, it MUST end with *.pem
* more trouble shooting: https://aws.amazon.com/de/premiumsupport/knowledge-center/linux-credentials-error/
* Instead of the `-i toyotamatching.pem` you might vote for using `ssh-agent` 
  `ssh-add`.

```bash
ssh -i toyotamatching.pem ec2-user@3.66.16.178
```

After login:
```bash
$ docker ps
$ docker logs <container_id>
```

### references ecs cloud login

* https://docs.aws.amazon.com/AmazonECS/latest/developerguide/instance-connect.html
* https://aws.amazon.com/de/premiumsupport/knowledge-center/linux-credentials-error/

## ecs container logging

### references ecs container logging

* https://docs.aws.amazon.com/AmazonECS/latest/developerguide/logs.html
* https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-logging-monitoring.html

## EC2 Instancen für ECS

### rexray docker plugin für 'docker-volume's

```bash
#!/bin/bash
echo "ECS_CLUSTER=toyotamatching" >> /etc/ecs/ecs.config;

cat <<EOF > /tmp/rexray.sh
#!/bin/bash
set -x
#verify that the agent is running
until curl -s http://localhost:51678/v1/metadata
do
sleep 1
done
#install the Docker volume plugin
docker plugin install rexray/ebs REXRAY_PREEMPT=true EBS_REGION=eu-central-1 --grant-all-permissions
sudo service ecs restart
EOF
chmod +x /tmp/rexray.sh
/tmp/rexray.sh > /tmp/rexray_init.log&
```

## Alternatives to ecs-cli

* https://github.com/aws/copilot-cli
* https://docs.docker.com/cloud/ecs-integration/
  + Will not work with old docker of Debian/10/Buster, upgrade first with https://docs.docker.com/engine/install/debian/
  + https://docs.docker.com/cloud/ecs-compose-examples/
  + https://github.com/docker/compose-cli/blob/main/docs/ecs-architecture.md
  + https://aws.amazon.com/de/blogs/containers/deploy-applications-on-amazon-ecs-using-docker-compose/
  
