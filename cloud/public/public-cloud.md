# Public cloud

* https://www.sitepoint.com/top-5-paas-solutions-developing-java-applications/

## Comparisons

* https://www.varonis.com/blog/aws-vs-azure-vs-google/
* https://www.eweek.com/cloud/aws-vs-google-cloud-platform/
* [Google Cloud für AWS-Experten](https://cloud.google.com/docs/compare/aws)

## Integration and Hybrid

* https://msandbu.org/integration-azure-defender-with-google-cloud-and-aws-and-cloud-security-posture-management-systems/

## Metacloud

* http://cloudve.org/ (Cloudbridge, CloudLaunch, CloudMan)
  + https://launch.usegalaxy.org/catalog
  + [CloudMan](https://github.com/galaxyproject/cloudman/tree/v2.0) (old, abandoned)
    - http://cloudman.irb.hr/
    - https://galaxyproject.org/cloudman/
  + [CloudLaunch](https://github.com/galaxyproject/cloudlaunch)
* https://www.meshcloud.io/de/ (commercial, multi-cloud)
  + https://github.com/meshcloud/collie-cli
  + https://collie-cli.io/
* [cloud on metacloud](https://cloud.pritunl.com)
* https://www.openstack.org/software/project-navigator/openstack-components#openstack-services
* [gardener - Managed Kubernetes Service](https://gardener.cloud/)
* [gloo mesh](https://docs.solo.io/gloo-mesh-enterprise/latest/)
  + https://github.com/solo-io/gloo-mesh
* https://www.zenko.io/

### Tools and standards

* [cloud-init](https://cloud-init.io/)

### Google Anthos (commercial)

* https://cloud.google.com/anthos/
* https://cloud.google.com/blog/topics/hybrid-cloud/new-platform-for-managing-applications-in-todays-multi-cloud-world
* https://inthecloud.withgoogle.com/content-anthos/dl-cd.html
* https://cloud.google.com/blog/products/gcp/cloud-services-platform-bringing-the-best-of-the-cloud-to-you

## AI and DL

* https://towardsdatascience.com/maximize-your-gpu-dollars-a9133f4e546a?gi=688d126dc207

## Provisioning

* https://www.servertribe.com/best-terraform-alternatives/

* [harvester HCI](https://harvesterhci.io/) meta-provisioning
  + https://docs.harvesterhci.io/v1.1
* https://www.nomadproject.io/api-docs
  + https://www.heise.de/select/ix/2017/7/1499098548285194
* [tinkerbell](https://tinkerbell.org/)
  + [tink-cli](https://docs.tinkerbell.org/services/tink-cli/)
* [ironic - for metal](https://ironicbaremetal.org/)
  + [bifrost - ansible scripts to install ironic](https://opendev.org/openstack/bifrost)
* [google's anthos](https://cloud.google.com/anthos/docs/concepts/overview) (for GKE)
  + https://github.com/GoogleCloudPlatform/anthos-workshop
* [selkies](https://github.com/selkies-project/selkies-operator) GKE to orchestrate per-user stateful workloads
* [ansible](https://www.redhat.com/sysadmin/ansible-provisioning-aws-cloud)
  + https://upcloud.com/resources/tutorials/automate-cloud-server-provisioning-ansible
  + https://www.ansible.com/integrations/cloud
* [attune](https://github.com/Attune-Automation)
  + https://www.servertribe.com/download-attune-registration/
* [uyuni](https://github.com/uyuni-project/uyuni) manage cloud vms (with ansible and salt)
  + https://www.uyuni-project.org/
* [karpenter](https://github.com/aws/karpenter) provisioning for kubernetes (mostly auto scaling)

### Pulumi

* https://www.pulumi.com/ (now commercial)
  + https://www.pulumi.com/docs/intro/languages/
  + https://www.pulumi.com/docs/intro/concepts/
  + https://www.pulumi.com/docs/intro/concepts/state/
  + https://www.pulumi.com/docs/troubleshooting/faq/
  + https://github.com/pulumi/pulumi
* [pulumi languages SDKs](https://www.pulumi.com/docs/languages-sdks/) node.js, python, go-lang, .NET, java, yaml
* [docs: module lb (load balancer)](https://www.pulumi.com/docs/reference/pkg/nodejs/pulumi/awsx/lb/#ApplicationLoadBalancer)
  + [docs: AWS ELB](https://www.pulumi.com/docs/clouds/aws/guides/elb/)
* [templates](https://www.pulumi.com/templates/)
* [pulumi esc cli](https://www.pulumi.com/docs/esc-cli/)
* [pulumi kotlin SDK](https://github.com/VirtuslabRnD/pulumi-kotlin)
* [debug pulumi](https://github.com/pulumi/pulumi/blob/master/CONTRIBUTING.md)
* [pulumiverse](https://github.com/orgs/pulumiverse/repositories) community providers for pulumi
  + https://github.com/pulumiverse/infra

#### Pulumi on AWS

* [pulumi crosswalks for AWS](https://www.pulumi.com/docs/clouds/aws/guides/)
  + [AWSX](https://www.pulumi.com/registry/packages/awsx/)
* [docs: ECS](https://www.pulumi.com/docs/clouds/aws/guides/ecs/)
  + [ECS container service template](https://www.pulumi.com/templates/container-service/aws/)
* [pulumi aws-native provider](https://www.pulumi.com/registry/packages/aws-native/installation-configuration/)
  + https://github.com/pulumi/pulumi-aws-native
* [pulumi old aws classic provider](https://www.pulumi.com/registry/packages/aws/installation-configuration/)
* [cf2pulumi](https://www.pulumi.com/cf2pulumi/) Convert CloudFormation Templates to Pulumi

### Terraform

* https://learn.hashicorp.com/terraform
* https://registry.terraform.io/
* [terraform language basics](https://www.terraform.io/docs/language/index.html)
* cloud agnostic?
  + https://discuss.hashicorp.com/t/is-terraform-really-cloud-agnostic/5980/2
* Terraform state is version dependant - so what to do?
  + https://londonappdeveloper.com/how-to-use-terraform-via-docker-compose-for-professional-developers/
* [CDK for terraform](https://developer.hashicorp.com/terraform/cdktf)
* [opentofu](https://opentofu.org/) terraform open source fork
  + https://github.com/opentofu/opentofu
  + https://github.com/opentofu/manifesto

#### Terraform primer

* https://grahamlyons.com/article/a-zero-fricton-terraform-primer
* https://www.baeldung.com/ops/terraform-intro
* https://blog.gruntwork.io/terraform-up-running-2nd-edition-early-release-is-now-available-b104fc29783f
* https://tf-eks-workshop.workshop.aws/020_prerequisites.html

#### Terraform examples

* ec2 for docker compose
  + https://gist.github.com/jamesmishra/18ee5d7d053db9958d0e4ccbb37f8e1d
* https://github.com/lichti/terraform-deploy-aws-ecs-example

#### Terraform on AWS

* https://learn.hashicorp.com/tutorials/terraform/aws-build
* https://learn.hashicorp.com/collections/terraform/aws-get-started
* https://registry.terraform.io/providers/hashicorp/aws/latest/docs
* https://aws.amazon.com/de/blogs/apn/terraform-beyond-the-basics-with-aws/
* https://tf-eks-workshop.workshop.aws/500_eks-terraform-workshop/510_scenario/intro.html
* [terraform aws examples](https://github.com/hashicorp/terraform-provider-aws/tree/main/examples/api-gateway-rest-api-openapi)
* [terraform ecs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_service)

### CloudBridge

* https://cloudbridge.readthedocs.io/en/latest/ featured!

## API lifecycle

* https://cloud.google.com/apigee?hl=de (commercial)
