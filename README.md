# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# Lưu ý cài đặt Webpacker vào project
  - Webpack tự động có trong phiên bản Rails 6. Lên Rails 7 đã không còn sử dụng nữa. Muốn cài đặt phải install về
  - Gõ câu lệnh `bundle add webpacker`
  - Sau đấy gõ câu lệnh `rails webpacker:install` để setup một số folder và file setup ban đầu
  - Chạy tiếp lệnh `./bin/webpack` để chạy file setup, có thể cần cài thêm một số npm package nếu báo lỗi.
  - Ví dụ thiếu `yarn add @babel/plugin-proposal-private-methods` 
    và `yarn add -D @babel/plugin-proposal-private-property-in-object`
  - Tạo folder `application.js` trong folder `app/javascript/packs` và run dự án
  - Khi đã có yarn thì có thể cài bootstrap `yarn add bootstrap@4.3.1 jquery popper.js`
  - Đọc thêm tài liệu
  - Phải tự add luôn cả gem 'sass-rails' bằng câu lệnh `bundle add sass-rails`