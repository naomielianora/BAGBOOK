INSERT INTO `User` (`username`, `password`, `full_name`, `email`, `status`) VALUES
('admin', 'jGl25bVBBBW96Qi9Te4V37Fnqchz/Eu4qB9vKrRIqRg=', NULL, NULL, 0),
('naomi_elianora', 'LhvDh4lyX/26hDNrW9XuPQQZisGax4MVxN4wt6bkOuk=', 'Naomi Elianora', 'naomielianora@gmail.com', 1),
('dianestrii', 'y7EiYvVivh2Xle7nveCsJLRMNuA8b7A7b0mn0Vxj2zg=', 'Dian Estri', 'dianestri@gmail.com',1),
('ghabrielg', 'G4FgmSJilFrqgU4cdaBheNQHN50P5UqrwHwdn+hyC5k=', 'Ghabriel Galyndeo', 'ghabs@gmail.com',1),
('john123', 'qF3JLrBcRGQibxd5wsNZycmQVh8I7q7LeJtQ4fET+0M=', 'John Doe', 'john123@gmail.com', 1),
('mary456', 'sq9xgSsy95oG2r4Q+VL2K8MXlaQW6Kx8aEYIdJ4QjVU=', 'Mary Smith', 'mary456@yahoo.com', 1),
('alex789', 'ONPQgI1ip3kGOn2l45b6r9sVqy6wR+4KnqUp02hwfCo=', 'Alex Johnson', 'alex789@gmail.com', 1),
('sarah12', 'z9/3IGZM3ApIYK1cM0T+f+uIopg3h/REwgLvTq3Fj3o=', 'Sarah Wilson', 'sarah12@yahoo.com', 1),
('mike34', 'ssFOn3y9bpWzFV82SwGKqev3WhzmFC9zq6eU1IRlnxM=', 'Mike Anderson', 'mike34@gmail.com', 1),
('emily56', 'ztKJrVfAtD6iZab3QOqK2qQ1Oz2F4PNtHxLXfgWLebM=', 'Emily Davis', 'emily56@yahoo.com', 1),
('david78', 'YzNSFtZ/IjvDylD6mmIaPXtQhUh2GWGvTlqf+/vT7jY=', 'David Taylor', 'david78@gmail.com', 1),
('lisa90', 'BmrXhO4p/5AHHr6KDI3txZddwZt3R6SSAblnMPrTdoQ=', 'Lisa Brown', 'lisa90@yahoo.com', 1),
('peter23', 'N+3EXwG5pqJZ80HJy/kz2mD9aJO6fYSmZcA99Gp5Lbo=', 'Peter Martinez', 'peter23@gmail.com', 1),
('julia45', 'j2/Edw/n7+XXvOeL4m+pDlE1TMFFkER+cxLO4STkCg4=', 'Julia Thompson', 'julia45@yahoo.com', 1);



-- Category table
INSERT INTO `Category` (`cat_name`) VALUES
('Handbags'),
('Backpacks'),
('Tote Bags'),
('Clutches'),
('Crossbody Bags');

-- Sub-category table
INSERT INTO `Sub_category` (`subCat_name`, `idCat`) VALUES
-- Handbags
('Leather', 1),
('Satchel', 1),
('Hobo', 1),
('Shoulder', 1),
('Bucket', 1),
('Tote', 1),
('Messenger', 1),
('Crossbody', 1),
-- Backpacks
('Canvas', 2),
('Leather', 2),
('Travel', 2),
('Laptop', 2),
('Fashion', 2),
-- Tote Bags
('Nylon', 3),
('Canvas', 3),
('Beach', 3),
('Designer', 3),
('Work', 3),
-- Clutches
('Evening', 4),
('Box', 4),
('Envelope', 4),
('Hardcase', 4),
('Wristlet', 4),
-- Crossbody Bags
('Chain', 5),
('Leather', 5),
('Mini', 5),
('Saddle', 5),
('Convertible', 5);


INSERT INTO `Brand` (`brand_name`) VALUES
('Coach'),
('Louis Vuitton'),
('Gucci'),
('Chanel'),
('Prada'),
('Hermès'),
('Michael Kors'),
('Fendi'),
('Burberry'),
('Givenchy');


INSERT INTO `Designer` (`des_name`) VALUES
('No Designer'),
('Nicolas Ghesquière'),
('Alessandro Michele'),
('Virginie Viard'),
('Miuccia Prada'),
('Nadège Vanhee-Cybulski');


-- Bag table
INSERT INTO `Bag` (`bag_name`, `length`, `width`, `height`, `color`, `idSubCat`, `idBrand`, `idDes`) VALUES
-- Handbags
('Neverfull GM', 39, 32, 19, 'Beige', 6, 2, 1),
('Lady Dior', 24, 20, 11, 'Black', 4, 4, 3),
('Faye Day', 29, 23, 14, 'Grey', 7, 3, 2),
('Puzzle', 23, 19, 12, 'White', 8, 5, 4),
-- Backpacks
('Mini City', 23, 18, 10, 'Black', 9, 7, 5),
('Graffiti Backpack', 28, 32, 15, 'Multicolor', 10, 3, 2),
('Le Pliage Neo', 30, 28, 20, 'Navy Blue', 11, 2, 6),
('Classic Backpack', 25, 30, 12, 'Brown', 9, 2, 1),
-- Tote Bags
('Speedy 35', 35, 23, 18, 'Monogram', 12, 2, 1),
('Medium Phantom', 37, 29, 16, 'Cognac', 13, 5, 4),
('Rivington PM', 32, 28, 16, 'Damier Ebene', 12, 2, 1),
('Striped Tote', 40, 35, 14, 'Black/White', 14, 4, 3),
-- Clutches
('Soho Disco', 21, 15, 7, 'Red', 15, 3, 2),
('Envelope Wristlet', 27, 17, 2, 'Blush Pink', 16, 7, 5),
('Box Clutch', 19, 12, 4, 'Gold', 17, 4, 3),
('Satin Clutch', 24, 11, 6, 'Navy Blue', 18, 3, 2),
-- Crossbody Bags
('Mini Luggage', 22, 21, 12, 'Blue', 19, 5, 4),
('Camera Bag', 18, 22, 8, 'Beige', 20, 2, 1),
('Dionysus Mini', 16, 10, 4, 'Pink', 21, 3, 2),
('Saddle Crossbody', 21, 18, 6, 'Brown', 22, 4, 3),
-- NO DESIGNER
-- Tote Bags
('Large Shopper Tote', 38, 32, 20, 'Taupe', 12, 9, 1),
('Structured Work Tote', 36, 27, 16, 'Black', 12, 10, 1),
-- Clutches
('Metallic Evening Clutch', 20, 12, 5, 'Silver', 15, 5, 1),
('Satin Box Clutch', 18, 10, 4, 'Red', 17, 4, 1),
-- Crossbody Bags
('Mini Crossbody', 22, 20, 10, 'Caramel', 18, 2, 1),
('Leather Saddle Bag', 26, 24, 11, 'Burgundy', 21, 5, 1),
('Convertible Chain Bag', 20, 16, 8, 'White', 23, 7, 1),
('Quilted Mini Bag', 18, 15, 6, 'Pink', 24, 3, 1);

INSERT INTO `Review_Value` (`review_value`, `value_desc`) VALUES
('1', 'sangat jelek'),
('2', 'jelek'),
('3', 'biasa saja'),
('4', 'bagus'),
('5', 'sangat bagus');
-- Review table
INSERT INTO `Review` (`desc`, `value`, `idUser`, `idBag`) VALUES
-- Handbags
('Great size for everyday use.', 5, 1, 1),
('Not as spacious as expected.', 3, 2, 1),
('Excellent quality and craftsmanship.', 5, 3, 1),
('Love the iconic design.', 4, 4, 1),
-- Backpacks
('Comfortable and practical.', 5, 1, 5),
('Vibrant colors, perfect for travel.', 4, 2, 5),
('Durable and lightweight.', 4, 3, 5),
('Could use more internal pockets.', 3, 4, 5),
-- Tote Bags
('Spacious and versatile.', 5, 1, 9),
('Beautiful and elegant.', 4, 2, 9),
('Not suitable for heavy items.', 3, 3, 9),
('Classic design that never goes out of style.', 5, 4, 9),
-- Clutches
('Perfect for a night out.', 5, 1, 15),
('Compact and holds essentials.', 4, 2, 15),
('The color is more vibrant in person.', 5, 3, 15),
('Could be slightly larger.', 3, 4, 15),
-- Crossbody Bags
('Ideal for daily use.', 4, 1, 19),
('Strap could be more adjustable.', 3, 2, 19),
('Love the unique details.', 4, 3, 19),
('Not enough room for essentials.', 3, 4, 19),
-- Tote Bags
('Roomy and stylish.', 4, 1, 25),
('Great for work and travel.', 5, 2, 25),
('Not as sturdy as expected.', 3, 3, 25),
('Good value for the price.', 4, 4, 25),
-- Clutches
('Eye-catching and glamorous.', 5, 1, 21),
('Compact and convenient.', 4, 2, 21),
('Received the wrong color.', 2, 3, 21),
('Stylish and elegant.', 4, 4, 21),
-- Crossbody Bags
('Good quality, but the price is high.', 4, 1, 22),
('Versatile and easy to carry.', 5, 2, 22),
('Love the adjustable strap.', 4, 3, 22),
('Not suitable for larger items.', 3, 4, 22),
-- Additional reviews to reach a total of 100
('Great value for the quality.', 5, 1, 2),
('The size is perfect for everyday use.', 4, 2, 2),
('The color is even more beautiful in person.', 5, 3, 2),
('The stitching is coming undone.', 2, 4, 2),
('Very sturdy and well-made.', 5, 1, 3),
('Not enough compartments for organization.', 3, 2, 3),
('The design is timeless and elegant.', 5, 3, 3),
('The strap is uncomfortable.', 2, 4, 3),
('I love the unique shape of this bag.', 4, 1, 4),
('The material feels luxurious.', 5, 2, 4),
('The bag arrived with a small stain.', 3, 3, 4),
('The white color gets dirty easily.', 2, 4, 4),
('Perfect size for everyday essentials.', 4, 1, 5),
('The backpack straps are adjustable and comfortable.', 5, 2, 5),
('The bag is starting to show signs of wear.', 3, 3, 5),
('The multicolor design is eye-catching.', 4, 4, 5),
('Great bag for travel and everyday use.', 5, 1, 6),
('The graffiti pattern is unique and fun.', 4, 2, 6),
('The zippers are not very smooth.', 3, 3, 6),
('The navy blue color is rich and beautiful.', 4, 4, 6),
('The bag has a classic and timeless design.', 4, 1, 7),
('The material feels durable and high-quality.', 5, 2, 7),
('The bag is larger than expected.', 3, 3, 7),
('The brown color goes with everything.', 4, 4, 7),
('The monogram print is iconic.', 5, 1, 8),
('The bag is spacious and holds a lot.', 4, 2, 8),
('The bag arrived with a minor scratch.', 3, 3, 8),
('The black and white stripes are chic.', 4, 4, 8),
('The red color is vibrant and eye-catching.', 5, 1, 10),
('The bag is lightweight and easy to carry.', 4, 2, 10),
('The strap is not adjustable.', 2, 3, 10),
('The gold color adds a touch of luxury.', 4, 4, 10),
('The navy blue satin is elegant and luxurious.', 5, 1, 11),
('The bag is spacious enough for essentials.', 4, 2, 11),
('The clutch arrived with a loose thread.', 2, 3, 11),
('The bag has a timeless and versatile design.', 4, 4, 11),
('The blue color is vibrant and beautiful.', 4, 1, 12),
('The bag is small and lightweight.', 3, 2, 12),
('The pink color is softer than expected.', 4, 3, 12),
('The brown color is versatile and goes with everything.', 4, 4, 12),
('The bag is perfect for travel.', 4, 1, 13),
('The strap is detachable and convenient.', 3, 2, 13),
('The bag arrived with a small scuff.', 2, 3, 13),
('The damier ebene pattern is classic.', 4, 4, 13),
('The bag is small and compact.', 4, 1, 14),
('The blush pink color is feminine and pretty.', 4, 2, 14),
('The bag arrived with a scratch on the hardware.', 2, 3, 14),
('The black leather is sleek and sophisticated.', 4, 4, 14),
-- Tote Bags
('The taupe color is versatile and goes with everything.', 4, 1, 15),
('The bag is spacious and fits all my belongings.', 5, 2, 15),
('The stitching is starting to come loose.', 2, 3, 15),
('The price is reasonable for the quality.', 4, 4, 15),
('The black color is sleek and professional.', 4, 1, 16),
('The bag is sturdy and holds its shape.', 5, 2, 16),
('The bag arrived with a small stain.', 3, 3, 16),
('The bag is great for work and travel.', 4, 4, 16),
-- Clutches
('The metallic finish adds a touch of glam.', 5, 1, 17),
('The bag is compact and holds all my essentials.', 4, 2, 17),
('Received the wrong color.', 2, 3, 17),
('The red satin is luxurious and elegant.', 4, 4, 17),
('The price is high for the quality.', 4, 1, 18),
('The bag is versatile and can be worn multiple ways.', 5, 2, 18),
('The strap is not adjustable.', 3, 3, 18),
('The pink color is soft and feminine.', 4, 4, 18),
-- Crossbody Bags
('The bag is well-made and durable.', 4, 1, 19),
('The size is perfect for everyday use.', 4, 2, 19),
('The strap is not adjustable.', 2, 3, 19),
('The burgundy color is rich and beautiful.', 4, 4, 19),
('The bag is versatile and can be worn as a shoulder bag or crossbody.', 4, 1, 20),
('The leather is soft and smooth.', 5, 2, 20),
('The bag arrived with a scratch on the hardware.', 2, 3, 20),
('The white color is clean and fresh.', 4, 4, 20),
('The bag is small and compact.', 4, 1, 21),
('The chain strap is not very comfortable.', 3, 2, 21),
('The bag is versatile and can be dressed up or down.', 4, 3, 21),
('The quilted pattern adds a touch of luxury.', 4, 4, 21),
('The bag is a great size for everyday use.', 4, 1, 22),
('The material feels durable and high-quality.', 5, 2, 22),
('The bag arrived with a small stain.', 3, 3, 22),
('The strap is not adjustable.', 2, 4, 22),
('The bag is compact and holds essentials.', 4, 1, 23),
('The silver color is shiny and eye-catching.', 4, 2, 23),
('The bag arrived with a scratch on the hardware.', 2, 3, 23),
('The red color is vibrant and bold.', 4, 4, 23),
('The price is high for the quality.', 4, 1, 24),
('The bag is versatile and can be worn as a shoulder bag or crossbody.', 5, 2, 24),
('The strap is not adjustable.', 3, 3, 24),
('The pink color is feminine and pretty.', 4, 4, 24),
-- Tote Bags
('Roomy and stylish.', 4, 1, 25),
('Great for work and travel.', 5, 2, 25),
('Not as sturdy as expected.', 3, 3, 25),
('Good value for the price.', 4, 4, 25);
