# Week 1 CLI Tests & Commands

## Launch Instances
```bash
# Public 1A
aws ec2 run-instances \
  --image-id <value>  \
  --instance-type <value>  \
  --security-group-ids <value> \
  --subnet-id <value>  \
  --key-name <value>  \
  --user-data file://scripts/user-data.sh

# Public 1B
aws ec2 run-instances \
  --image-id <value>  \
  --instance-type t2.micro \
  --security-group-ids <value> \
  --subnet-id <value>  \
  --key-name <value>  \
  --user-data file://scripts/user-data.sh

# Private 1B
aws ec2 run-instances \
  --image-id <value> \
  --instance-type t2.micro \
  --security-group-ids <value> \
  --subnet-id <value> \
  --key-name <value>  \
  --user-data file://scripts/user-data.sh

# Terminate instances

aws ec2 terminate-instances --instance-ids <value> <value>