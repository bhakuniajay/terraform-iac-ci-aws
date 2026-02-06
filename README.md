# terraform-iac-ci-aws
# Production-Grade Website Deployment on AWS

## Overview
This project demonstrates a **production-grade website architecture on AWS**, designed with a focus on **scalability, performance, security, and operational reliability**.  
The solution combines static content delivery with dynamic scaling capabilities using AWS-managed services.

The project reflects **real-world cloud engineering practices**, including CDN caching, HTTPS, auto scaling, and rollback safety.

---

## Architecture Summary

- Static content hosted on **Amazon S3**
- Global content delivery using **Amazon CloudFront**
- Secure HTTPS access via **AWS Certificate Manager (ACM)**
- Dynamic backend handled by **EC2 instances behind an Application Load Balancer (ALB)**
- **Auto Scaling Group (ASG)** for traffic-based scaling
- Rollback safety using **S3 versioning**
- Performance optimization via **CloudFront cache invalidation**

---

## AWS Services Used

- Amazon S3  
- Amazon CloudFront  
- Amazon EC2  
- Application Load Balancer (ALB)  
- Auto Scaling Group (ASG)  
- AWS Certificate Manager (ACM)  
- AWS IAM  
- Amazon CloudWatch  

---

## Key Features

### Static Website Hosting
- Website files are hosted in an S3 bucket
- Bucket configured for static website hosting
- Versioning enabled for rollback protection

### Content Delivery & Security
- CloudFront distribution configured in front of S3
- HTTPS enabled using ACM certificates
- Custom domain mapped via DNS (GoDaddy)

### Cache Management
- CloudFront cache invalidation used after deployments
- Ensures users receive the latest content immediately
- Prevents stale content issues during frequent updates

### Scalability & High Availability
- EC2 instances deployed behind an ALB
- Auto Scaling Group spans multiple Availability Zones
- Scaling policies configured based on CPU utilization
- Ensures cost-efficient scaling during traffic spikes

### Monitoring & Operations
- CloudWatch metrics used to monitor EC2 and Auto Scaling health
- Scaling events triggered automatically based on load
- Architecture designed for minimal manual intervention

---

## Deployment Flow

1. Update static website files
2. Upload content to S3 bucket
3. Trigger CloudFront cache invalidation
4. Monitor EC2 and Auto Scaling health via CloudWatch
5. Validate application availability using ALB DNS endpoint

---

## Reliability & Cost Considerations

- CDN caching reduces origin load and improves performance
- Auto Scaling prevents over-provisioning
- S3 versioning enables quick rollback during faulty deployments
- Managed AWS services reduce operational overhead

---

## Why This Architecture?

This architecture was designed to simulate **real production environments**, where:
- Traffic is unpredictable
- Downtime is unacceptable
- Security and cost matter as much as performance

The project aligns closely with **cloud operations and DevOps best practices** used in enterprise environments.

---

## Future Enhancements

- Infrastructure provisioning
