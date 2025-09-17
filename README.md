# Week 1: AWS Networking Lab 🚀

## 🎯 Goal
Build a custom AWS VPC with public & private subnets, Internet Gateway, NAT Gateway, and test connectivity using EC2 instances.

---

## 🛠️ Architecture
- **VPC CIDR:** 10.0.0.0/16
- **Public Subnets:** 10.0.1.0/24, 10.0.2.0/24
- **Private Subnets:** 10.0.3.0/24, 10.0.4.0/24
- **Internet Gateway:** Public internet access
- **NAT Gateway:** Internet for private subnet
- **EC2 Instances:**
  - Public EC2 → internet via IGW
  - Private EC2 → internet via NAT

📌 Architecture Diagram:  
![Architecture](diagrams/week1-vpc.png)

---

## 📅 Steps Performed
- Created VPC & subnets
- Configured route tables (Public → IGW, Private → NAT)
- Launched EC2 instances in public & private subnets
- Validated connectivity (ping, curl)
- Automated EC2 bootstrap with user data (Apache + HTML)

👉 Full CLI commands & test logs in: [`notes/week1-details.md`](notes/week1-details.md)

---

## ⚠️ Costs
- **VPC, Subnets, IGW** → Free
- **EC2 (t2.micro / t3.micro)** → Free tier (750 hrs/month)
- **NAT Gateway** → **Not free** ($0.045/hr). Used only for testing, then deleted.

---

## ✅ Key Learnings
- Difference between Public & Private subnets
- Route tables control traffic flow
- NAT Gateway enables secure outbound internet for private EC2s
- Always delete chargeable resources after testing
