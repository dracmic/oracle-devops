To be able to deploy this repo use version of Terraform used 1.0.5 and version of oci provider 0.4.1
The scope of this repo is to be able to VCN, Compartment, Instances and object storage

Please take in consideration to replace values from following files with your needs.

In directory tfvars-globals:
replace the region and compartment_id in tf-global.tfvars

In directory tf-provider (here you need to define credentials needed to use terraform):

Replace your variables variables with your own credentials obtained from Oracle Cloud Console this are demo ones which are wrong
user_ocid="ocid1.user.oc1..aaaaaaaafx3rqsiyev64ijap64wnag7mrziti7va4crw47cs5brp5uoh6wgq"
fingerprint="d5:5a:2d:a1:4e:58:c0:9a:b0:93:7c:ca:1e:ae:71:ef"
tenancy_ocid="ocid1.tenancy.oc1..aaaaaaaavkksolvowasgmgy344nyvodqcd3ti3ztnnuar7gowkm3sumx3dxa"
region="eu-frankfurt-1"
private_key_path="/Users/ursum/.oci/mihaiursu.pem"


In directory tf-object_storage:
Replace the values of variables from object.auto.tfvars with your own

In directory tf-vcn;
You don't need to replace anything as this considered a module which is used in directory tf-compute-with-volumes and when you apply
from there it will deploy necessary subnets and virtual cloud Network

In directory tf-compute-with-volumes you will find the deployment code for the instances and with the extra volume for the public instance.
To have your own values of the networking parameters and values for instances please replace with your own in compute.auto.tfvars

The order in which you should deploy is:
1. cd tf-comparment; terraform init ; terraform plan --var-file=../tfvars-globals/tf-globals.tfvars; terraform apply --var-file=../tfvars-globals/tf-globals.tfvars
2.  cd tf-compute-with-volumes; terraform init ; terraform plan --var-file=../tfvars-globals/tf-globals.tfvars; terraform apply --var-file=../tfvars-globals/tf-globals.tfvars
3. cd tf-object_storage; terraform init ; terraform plan --var-file=../tfvars-globals/tf-globals.tfvars; terraform apply --var-file=../tfvars-globals/tf-globals.tfvars


For the ssh private key please write an email to valentin.ursu@gmail.com
