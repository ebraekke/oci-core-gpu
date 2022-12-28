
# What

Simple terraform script for creating GPU VMs in a (private) subnet and a Ngninx load balancer in a (public) subnet.  

# Prep 

## VCN setup: 

Wizard created VCN in Console, accepted all defaults. 

Edited a few exceptions afterward. 

**Exception 1:** 

Added a Bastion service with entry point in the public subnet. 

In my case this one has private IP: 10.0.0.49

**Exception 2:** 

Editing `Security List for Private Subnet-<your-vcn-name>`.
Changed rule that allows ssh (port 22) traffic from entire network (10.0.0.0/16) 
to only accept traffic from Bastion ip (10.0.0.49/32) -- note, this will be different for you! 

**Exception 3:**

Editing `Default Security List for <your-vcn-name>`.
Removed rule that allows ssh (port 22) traffic from all (0.0.0.0/0).

## Variables file

Create your own variable file and include in commandline as suggested below, file name `vars_fra.tfvars`. 

Use sample file `vars.tfvars.SAMPLE` as a starting point.  

# Usage

terraform plan --out=oci-core-gpu.tfplan --var-file=vars_fra.tfvars

terraform apply ....
