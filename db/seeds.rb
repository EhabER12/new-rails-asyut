# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# Create sample users
user1 = User.find_or_create_by!(email: "ahmed@example.com") do |user|
  user.name = "أحمد محمد"
  user.dob = Date.new(1990, 5, 15)
  user.phone_number = "01234567890"
end

user2 = User.find_or_create_by!(email: "fatma@example.com") do |user|
  user.name = "فاطمة علي"
  user.dob = Date.new(1995, 8, 20)
  user.phone_number = "01987654321"
end

user3 = User.find_or_create_by!(email: "omar@example.com") do |user|
  user.name = "عمر حسن"
  user.dob = Date.new(1988, 12, 10)
  user.phone_number = "01555666777"
end

# Create sample posts
Post.find_or_create_by!(title: "مرحباً بكم في المدونة") do |post|
  post.content = "هذا هو أول منشور في المدونة. نرحب بكم جميعاً ونتمنى أن تستفيدوا من المحتوى المقدم."
  post.user = user1
end

Post.find_or_create_by!(title: "نصائح للبرمجة") do |post|
  post.content = "البرمجة فن وعلم في نفس الوقت. من أهم النصائح: الممارسة المستمرة، قراءة الكود، والتعلم من الأخطاء."
  post.user = user2
end

Post.find_or_create_by!(title: "أهمية التعلم المستمر") do |post|
  post.content = "في عالم التكنولوجيا المتطور، التعلم المستمر ليس مجرد خيار بل ضرورة حتمية للنجاح والتقدم."
  post.user = user3
end

puts "تم إنشاء #{User.count} مستخدم و #{Post.count} منشور"
