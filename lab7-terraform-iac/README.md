# Lab 7 - Terraform Infrastructure as Code (IaC)

**Author:** Chalasi Mbira

## Lab Overview
This lab demonstrates the use of Terraform to define, provision, and manage cloud infrastructure as code.  

Key components:
- **Terraform Configuration (`main.tf`)**: Defines AWS resources like EC2 instances, S3 buckets, or other services.
- **Scan Script (`scan.sh`)**: Runs security and best-practice checks on the Terraform code.
- **Git Best Practices**: Only source code is pushed; large binaries are ignored.

## Learning Points
1. Learned to structure Terraform projects for multiple resources.
2. Practiced Infrastructure as Code (IaC) principles for reproducible deployments.
3. Understood the importance of keeping `.terraform` directories and state files out of Git to avoid massive pushes.
4. Used `.gitignore` to maintain a clean repository while allowing local builds and scans.
5. Recognized how Terraform initializes provider binaries locally with `terraform init` without committing them to Git.
6. Demonstrated professional Git workflow for large DevOps projects.

## Notes
- `.terraform` folder and `*.tfstate` files are intentionally ignored in Git.
- Any user can clone this repo and run `terraform init` to restore dependencies.
- This practice reflects both DevOps efficiency and version-control best practices.

---

