#!bin/bash

# a. Yêu cầu người dùng nhập vào họ và tên (không dấu), tạo ra thư mục có tên tương ứng với thông tin người dùng vừa nhập
echo "Ho va ten: "
read name
mkdir ./"$name"


# b. Đọc file text monhoc.txt ở trên, ở trong thư mục vừa tạo ở câu a, với mỗi môn học, tạo ra một thư mục có tên tương ứng với mã môn đó.
for monhoc in `cat monhoc.txt`
do
    mkdir ./"$name"/"$monhoc"
done