# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)





################imageset A
imageSetA = ImageSet.create()

imageA1 = Image.create(img_url: 'https://content.mycutegraphics.com/backgrounds/polkadot/dotbg79.gif', image_set: imageSetA)
GreenArea.create(coordinates: '78,76,74', image: imageA1)
GreenArea.create(coordinates: '242,245,71', image: imageA1)
BlueArea.create(coordinates: '80,246,73', image: imageA1)
BlueArea.create(coordinates: '242,77,71', image: imageA1)

imageA2 = Image.create(img_url: 'https://previews.123rf.com/images/rach27/rach271511/rach27151100004/48130527-a-blue-and-green-abstract-background-design-with-circles.jpg', image_set: imageSetA)
GreenArea.create(coordinates: '284,957,81', image: imageA2)
GreenArea.create(coordinates: '360,1079,92', image: imageA2)
GreenArea.create(coordinates: '352,717,71', image: imageA2)
BlueArea.create(coordinates: '509,553,86', image: imageA2)
BlueArea.create(coordinates: '531,365,85', image: imageA2)

imageA3 = Image.create(img_url: 'https://thenextweb.com/wp-content/blogs.dir/1/files/2015/03/contrast.jpg', image_set: imageSetA)
GreenArea.create(coordinates: '470,155,64', image: imageA3)
BlueArea.create(coordinates: '206,154,118', image: imageA3)

################imageset B
imageSetB = ImageSet.create()

imageB1 = Image.create(img_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuFeHQ2pK9HtAYr-E8jK-3-kJA6eoM95ZAItqjh-w8nthRMev2&s', image_set: imageSetB)
GreenArea.create(coordinates: '60,66,49', image: imageB1)
BlueArea.create(coordinates: '164,67,50', image: imageB1)

imageB2 = Image.create(img_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRTHv_zH-sOXWKgalwsZqKW7Vm6pVb2BatHeQ&usqp=CAU', image_set: imageSetB)
GreenArea.create(coordinates: '111,120,57', image: imageB2)

imageB3 = Image.create(img_url: 'https://cdn.shopify.com/s/files/1/0276/9565/products/Turquoise-Colored-Sand-500x500.jpg?v=1551114116', image_set: imageSetB)
BlueArea.create(coordinates: '247,249,210', image: imageB3)
