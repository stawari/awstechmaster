
# Bầi kiểm tra 3
Lấy 2 module từ AWS về:
- terraform-aws-modules/vpc/aws
- terraform-aws-modules/alb/aws

### Module VPC: 
    - Chỉ dùng chạy để tạo cơ bản 1 vpc + 2 public subnet + 2 private subnet
    - Thông tin VPC sẽ được dùng cho toàn bộ bài kiểm tra Terraform 

### Module ELB: 
    - Chỉ dùng đơn giản là tạo 1 ELB + set với security group 
    - Chưa tạo Ec2 và domain applied cho thực tế