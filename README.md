# 🩸 LifeSaver+ Blood Bank Management System

### ☁️ AWS + Terraform Cloud Deployment Project

![AWS](https://img.shields.io/badge/AWS-Cloud-orange?style=for-the-badge\&logo=amazonaws)
![Terraform](https://img.shields.io/badge/Terraform-IaC-blueviolet?style=for-the-badge\&logo=terraform)
![PHP](https://img.shields.io/badge/PHP-Backend-blue?style=for-the-badge\&logo=php)
![MySQL](https://img.shields.io/badge/MySQL-Database-orange?style=for-the-badge\&logo=mysql)
![Apache](https://img.shields.io/badge/Apache-WebServer-red?style=for-the-badge\&logo=apache)

---

# 🚀 Project Overview

**LifeSaver+** is a cloud-based Blood Bank Management System developed using **PHP & MySQL** and deployed on **AWS Cloud Infrastructure** using **Terraform Infrastructure as Code (IaC)**.

The project helps patients quickly find blood donors near **Chandigarh** and **Himachal Pradesh** during emergencies.

This project demonstrates:

* 🌐 Cloud Deployment
* ⚙️ Infrastructure Automation
* ☁️ AWS Services Integration
* 🛠️ DevOps & Terraform Skills
* 🔒 Secure Cloud Networking

---

# ✨ Features

✅ Blood donor registration
✅ Blood search by blood group
✅ Admin login system
✅ Blood request management
✅ Contact & support section
✅ Cloud-hosted MySQL database
✅ Automated AWS infrastructure deployment using Terraform

---

# 🏗️ AWS Infrastructure

The infrastructure is fully automated using Terraform.

## 🔹 AWS Services Used

* 🖥️ EC2 (Ubuntu Server)
* 🗄️ RDS MySQL
* 🌐 VPC
* 🔐 Security Groups
* 🚪 Internet Gateway
* 📡 Route Tables
* ☁️ Terraform IaC

---

# 📐 Architecture

```text id="y4h9sd"
Users
   ↓
Apache + PHP on EC2
   ↓
RDS MySQL Database
```

---

# 📂 Project Structure

```text id="0u4jxn"
BBDMS-Project-PHP/
│
├── bbdms/                 # PHP application files
│
├── lifesaver-infra/       # Terraform infrastructure
│   ├── providers.tf
│   ├── vpc.tf
│   ├── security.tf
│   ├── ec2.tf
│   ├── rds.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── .gitignore
│
├── SQL File/
│   └── bbdms.sql
│
└── README.md
```

---

# ⚙️ Technologies Used

| Technology   | Purpose                |
| ------------ | ---------------------- |
| PHP          | Backend Development    |
| MySQL        | Database               |
| Apache2      | Web Server             |
| Terraform    | Infrastructure as Code |
| AWS EC2      | Hosting                |
| AWS RDS      | Managed Database       |
| AWS VPC      | Networking             |
| Ubuntu Linux | Server OS              |

---

# 🚀 Terraform Deployment Steps

## 1️⃣ Initialize Terraform

```bash id="q8mslf"
terraform init
```

---

## 2️⃣ Check Infrastructure Plan

```bash id="c7ytwl"
terraform plan
```

---

## 3️⃣ Deploy Infrastructure

```bash id="m9opzk"
terraform apply
```

Type:

```text id="h4ueyb"
yes
```

---

## 4️⃣ Get Outputs

```bash id="r8hynq"
terraform output
```

Outputs:

* 🌐 EC2 Public IP
* 🗄️ RDS Endpoint

---

# 🔐 SSH into EC2

```bash id="u9jnka"
ssh -i "terraform-key.pem" ubuntu@<EC2_PUBLIC_IP>
```

---

# 🗄️ Database Setup

Import MySQL database:

```bash id="w7qpso"
mysql -h <RDS_ENDPOINT> -u admin -p lifesaverdb < bbdms.sql
```

---

# 🌍 Access Website

Open in browser:

```text id="d8mkya"
http://<EC2_PUBLIC_IP>
```

---

# 👨‍💻 Admin Login

| Username | Password |
| -------- | -------- |
| admin    | admin    |

---

# 📚 Learning Outcomes

This project helped in learning:

✅ AWS Cloud Infrastructure
✅ Terraform Infrastructure as Code
✅ EC2 & RDS Deployment
✅ Linux Server Administration
✅ Apache & PHP Hosting
✅ Cloud Networking
✅ SSH & Security Groups
✅ DevOps Fundamentals

---

# 🛑 Destroy Infrastructure

To avoid AWS charges:

```bash id="g5nhzd"
terraform destroy
```

---

# 👨‍💻 Author

## Nikhil Chamyal

🎓 MCA (Cloud Computing & DevOps)
🏫 Chandigarh University

---

# ⭐ Future Improvements

* 🔒 HTTPS SSL Setup
* 🌐 Custom Domain
* ⚖️ Load Balancer
* 📦 Docker Containerization
* 🔁 Jenkins CI/CD Pipeline
* ☸️ Kubernetes Deployment
* 📊 Monitoring & Logging

---

# 🌟 If You Like This Project

Give this repository a ⭐ on GitHub!
