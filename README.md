
# What

Simple terraform script for creating GPU VMs in a (private) subnet and a Ngninx load balancer in a (public) subnet.  

# Prereqs

## VCN setup: 

Create VCN using the wizard created VCN, accept all defaults. 

![](doc/VCN_wizard.png)

Edited a few exceptions afterward. 

**Exception 1:** 

Added a Bastion service with entry point in the public subnet. 

In my case this one has private IP: 10.0.0.49

**Exception 2:** 

Edited `Security List for Private Subnet-<your-vcn-name>`.
Removed rule that allows ssh (port 22) traffic from entire network (10.0.0.0/16) 
Added rule to accept SSH traffic from Bastion ip (10.0.0.49/32) -- note, this will be different for you! 

**Exception 3:**

Edited `Default Security List for <your-vcn-name>`.
Removed rule that allows ssh (port 22) traffic from all (0.0.0.0/0).
Added rule to accept SSH traffic from Bastion ip (10.0.0.49/32) -- note, this will be different for you! 

## Variables file

Create your own variable file and include in commandline as suggested below, file name `vars_fra.tfvars`. 

Use sample file `vars.tfvars.SAMPLE` as a starting point.  

# Usage

terraform plan --out=oci-core-gpu.tfplan --var-file=vars_fra.tfvars

terraform apply ....
