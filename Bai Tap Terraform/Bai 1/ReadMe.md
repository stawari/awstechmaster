

# Bầi kiểm tra 1


### Link: http://tfexam-b1.stawari.net


### Mô tả: 
    Terraform sẽ tạo Ec2 gồm :
    -  Security Group allow port SSH, HTTP, HTTPS, PING từ ngoài
    -  Tạo và gắn Elastic IP đồng thời update Elastic Ip vào domain tfexam-b1.stawari.net thông qua route53
    -   1 source php site + nginx config ssl được copy vào Ec2
    -   Ec2 chạy script khởi động cài Nginx + certbot thông qua Userdata
    -   Đồng thời script cũng cấu hình để nginx host được source php đã copy và có cert ssl

### Kết quả:
- Sau khi khởi tạo từ terraform, Website đã có thể hoạt động ở https


