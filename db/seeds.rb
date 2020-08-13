# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)





################imageset A
C107 = ImageSet.create()

C107_Pre = Image.create(img_url: 'C107_Pre.JPG', image_set: C107)
C107_Green = Image.create(img_url: 'C107_Green.JPG', image_set: C107)
C107_Post = Image.create(img_url: 'C107_Post.JPG', image_set: C107)

GreenArea.create(coordinates: '719,491,68', image: C107_Pre)
GreenArea.create(coordinates: '853,835,83', image: C107_Pre)
BlueArea.create(coordinates: '706,679,62', image: C107_Pre)

GreenArea.create(coordinates: '719,491,68', image: C107_Green)
GreenArea.create(coordinates: '853,835,83', image: C107_Green)
BlueArea.create(coordinates: '706,679,62', image: C107_Green)

GreenArea.create(coordinates: '719,491,68', image: C107_Post)
GreenArea.create(coordinates: '853,835,83', image: C107_Post)
BlueArea.create(coordinates: '706,679,62', image: C107_Post)

################imageset B
C109 = ImageSet.create()

C109_Pre = Image.create(img_url: 'C109_Pre.JPG', image_set: C109)
C109_Green = Image.create(img_url: 'C109_Green.JPG', image_set: C109)
C109_Post = Image.create(img_url: 'C109_Post.JPG', image_set: C109)

GreenArea.create(coordinates: '1002,527,112', image: C109_Pre)
GreenArea.create(coordinates: '763,592,69', image: C109_Pre)

GreenArea.create(coordinates: '1002,527,112', image: C109_Green)
GreenArea.create(coordinates: '763,592,69', image: C109_Green)

GreenArea.create(coordinates: '1002,527,112', image: C109_Post)
GreenArea.create(coordinates: '763,592,69', image: C109_Post)
