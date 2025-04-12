#!bin/bash
# a. Kiểm tra trong thư mục người dùng, nếu thấy thư mục PNG và JPG chưa tồn tại thì tạo 02 thư mục này.
if [ ! -d /home/alttleboy/"PNG" ]; then
    mkdir /home/alttleboy/PNG
    echo "Da tao thu muc PNG"
fi
if [ ! -d /home/alttleboy/"JPG" ]; then
    mkdir /home/alttleboy/JPG
    echo "Da tao thu muc JPG"
fi

# b. Di chuyển tất cả file PNG trong thư mục ảnh ở trên vào thư mục PNG. Xuất ra màn hình số lượng ảnh PNG.
count=0
for file in *.png
do
    if [ -f "$file" ]; then
        mv "$file" /home/alttleboy/PNG
        ((count++))
    fi
done

echo "Number of PNG files: $count"

# c. Di chuyển tất cả file JPG trong thư mục ảnh ở trên vào thư mục JPG. Xuất ra màn hình số lượng ảnh JPG.
count=0
for file in *.jpg
do
    if [ -f "$file" ]; then
        mv "$file" /home/alttleboy/JPG
        ((count++))
    fi
done

echo "Number of JPG files: $count"