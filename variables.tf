variable "AmiName" {
	default = "Ixia_Cloud_Test_Appliance_11.00.4444.444-prod-nqoib5holinoe"
	description = "AMI name used for deploying instances"
	type = string
}

variable "AmiOwner" {
	default = "aws-marketplace"
	description = "Owner of AMI used for deploying instances"
	type = string
}

variable "Eth0PrivateIpAddress" {
	default = "10.0.10.11"
	description = "Private IP address associated with the first network interface"
	type = string
}

variable "Eth0SecurityGroupId" {
	description = "Id of the security group associated with first network interface"
	type = string
}

variable "Eth0SubnetId" {
	description = "Id of the subnet associated with the first network interface"
	type = string
}

variable "Eth1PrivateIpAddresses" {
	default = [ "10.0.2.12", "10.0.2.13", "10.0.2.14", "10.0.2.15", "10.0.2.16", "10.0.2.17", "10.0.2.18", "10.0.2.19", "10.0.2.20", "10.0.2.21" ]
	description = "List of IP addresses associated with the second network interface"
	type = list(string)
}

variable "Eth1SecurityGroupId" {
	description = "Id of the security group associated with second network interface"
	type = string
}

variable "Eth1SubnetId" {
	description = "Id of the subnet associated with the second network interface"
	type = string
}

variable "Eth2PrivateIpAddresses" {
	default = [ "10.0.3.12", "10.0.3.13", "10.0.3.14", "10.0.3.15", "10.0.2.16", "10.0.3.17", "10.0.3.18", "10.0.3.19", "10.0.3.20", "10.0.3.21" ]
	description = "List of IP addresses associated with the third network interface"
	type = list(string)
}

variable "Eth2SecurityGroupId" {
	description = "Id of the security group associated with third network interface"
	type = string
}

variable "Eth2SubnetId" {
	description = "Id of the subnet associated with the third network interface"
	type = string
}

variable "InstanceId" {
	default = "agent"
	description = "Id of the instance of this module that ensures uniqueness"
	type = string
}

variable "InstanceName" {
	default = null
	description = "Custom instance name used to override the default automatically generated name"
	type = string
}

variable "InstanceType" {
	default = "c5n.xlarge"
	description = "Instance type of VM"
	type = string
	validation {
		condition = contains([	"t3.xlarge", "t3.2xlarge",
								"t3a.xlarge", "t3a.2xlarge",
								"m6i.xlarge", "m6i.2xlarge", "m6i.4xlarge", "m6i.8xlarge", "m6i.12xlarge", "m6i.16xlarge", "m6i.24xlarge", "m6i.32xlarge",
								"m6a.xlarge", "m6a.2xlarge", "m6a.4xlarge", "m6a.8xlarge", "m6a.12xlarge", "m6a.16xlarge", "m6a.24xlarge", "m6a.32xlarge", "m6a.48xlarge",
								"m6in.xlarge", "m6in.2xlarge", "m6in.4xlarge", "m6in.8xlarge", "m6in.12xlarge", "m6in.16xlarge", "m6in.24xlarge", "m6in.32xlarge",
								"m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge",
								"m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge",
								"m5n.xlarge", "m5n.2xlarge", "m5n.4xlarge", "m5n.8xlarge", "m5n.12xlarge", "m5n.16xlarge", "m5n.24xlarge",
								"c6i.xlarge", "c6i.2xlarge", "c6i.4xlarge", "c6i.8xlarge", "c6i.12xlarge", "c6i.16xlarge", "c6i.24xlarge", "c6i.32xlarge",
								"c6a.xlarge", "c6a.2xlarge", "c6a.4xlarge", "c6a.8xlarge", "c6a.12xlarge", "c6a.16xlarge", "c6a.24xlarge", "c6a.32xlarge", "c6a.48xlarge",
								"c6in.xlarge", "c6in.2xlarge", "c6in.4xlarge", "c6in.8xlarge", "c6in.12xlarge", "c6in.16xlarge", "c6in.24xlarge", "c6in.32xlarge",
								"c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge",
								"c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge",
								"c5n.xlarge", "c5n.2xlarge", "c5n.4xlarge", "c5n.9xlarge", "c5n.18xlarge",
								"c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge"
							], var.InstanceType)
		error_message = <<EOF
InstanceType must be one of the following types:
	t3.xlarge, t3.2xlarge,
	t3a.xlarge, t3a.2xlarge,
	m6i.xlarge, m6i.2xlarge, m6i.4xlarge, m6i.8xlarge, m6i.12xlarge,  m6i.16xlarge, m6i.24xlarge, m6i.32xlarge,
	m6a.xlarge, m6a.2xlarge, m6a.4xlarge, m6a.8xlarge, m6a.12xlarge, m6a.16xlarge, m6a.24xlarge, m6a.32xlarge, m6a.48xlarge,
	m6in.xlarge, m6in.2xlarge, m6in.4xlarge, m6in.8xlarge, m6in.12xlarge, m6in.16xlarge, m6in.24xlarge, m6in.32xlarge,
	m5.xlarge, m5.2xlarge, m5.4xlarge, m5.8xlarge, m5.12xlarge, m5.16xlarge, m5.24xlarge
	m5a.xlarge, m5a.2xlarge, m5a.4xlarge, m5a.8xlarge, m5a.12xlarge, m5a.16xlarge, m5a.24xlarge,
	m5n.xlarge, m5n.2xlarge, m5n.4xlarge, m5n.8xlarge, m5n.12xlarge, m5n.16xlarge, m5n.24xlarge,
	c6i.xlarge, c6i.2xlarge, c6i.4xlarge, c6i.8xlarge, c6i.12xlarge, c6i.16xlarge, c6i.24xlarge, c6i.32xlarge,
	c6a.xlarge, c6a.2xlarge, c6a.4xlarge, c6a.8xlarge, c6a.12xlarge, c6a.16xlarge, c6a.24xlarge, c6a.32xlarge, c6a.48xlarge,
	c6in.xlarge, c6in.2xlarge, c6in.4xlarge, c6in.8xlarge, c6in.12xlarge, c6in.16xlarge, c6in.24xlarge, c6in.32xlarge,
	c5.xlarge, c5.2xlarge, c5.4xlarge, c5.9xlarge, c5.12xlarge, c5.18xlarge, c5.24xlarge,
	c5a.xlarge, c5a.2xlarge, c5a.4xlarge, c5a.8xlarge, c5a.12xlarge, c5a.16xlarge, c5a.24xlarge,
	c5n.xlarge, c5n.2xlarge, c5n.4xlarge, c5n.9xlarge, c5n.18xlarge,
	c4.xlarge, c4.2xlarge, c4.4xlarge, c4.8xlarge
		EOF
	}
}

variable "PlacementGroupId" {
	description = "Id of the placment group to which instance has been deployed"
	type = string
}

variable "Tag" {
	default = "ixnetwork"
	description = "App ID tag of application using the deployment"
	type = string
}

variable "UserEmailTag" {
	default = "terraform@example.com"
	description = "Email address tag of user creating the deployment"
	type = string
	validation {
		condition = length(var.UserEmailTag) >= 14
		error_message = "UserEmailTag minimum length must be >= 14."
	}
}

variable "UserLoginTag" {
	default = "terraform"
	description = "Login ID tag of user creating the deployment"
	type = string
	validation {
		condition = length(var.UserLoginTag) >= 4
		error_message = "UserLoginTag minimum length must be >= 4."
	}
}

variable "UserProjectTag" {
	default = "module"
	description = "Project tag of user creating the deployment"
	type = string
}

variable "Version" {
	default = "11-00"
	description = "Versioning of the application using the deployment"
	type = string
}