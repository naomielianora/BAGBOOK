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
INSERT INTO `Sub-category` (`subCat_name`, `idCat`) VALUES
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
('Saddle Crossbody', 21, 18, 6, 'Brown', 22, 4, 3);

--NO DESIGNER
-- Tote Bags
('Large Shopper Tote', 38, 32, 20, 'Taupe', 12, 9, 7),
('Structured Work Tote', 36, 27, 16, 'Black', 12, 10, NULL),
-- Clutches
('Metallic Evening Clutch', 20, 12, 5, 'Silver', 15, 5, NULL),
('Satin Box Clutch', 18, 10, 4, 'Red', 17, 4, NULL),
-- Crossbody Bags
('Mini Crossbody', 22, 20, 10, 'Caramel', 18, 2, NULL),
('Leather Saddle Bag', 26, 24, 11, 'Burgundy', 21, 5, NULL),
('Convertible Chain Bag', 20, 16, 8, 'White', 23, 7, NULL),
('Quilted Mini Bag', 18, 15, 6, 'Pink', 24, 3, NULL)




-- Review table
INSERT INTO `Review` (`desc`, `value`, `idUser`, `idBag`) VALUES
-- Neverfull GM (10 reviews)
('Great bag! Spacious and stylish.', 5, 2, 1),
('Not as big as I expected, but still a nice bag.', 4, 3, 1),
('Love the design and quality.', 5, 4, 1),
('Decent bag for everyday use.', 3, 5, 1),
('Highly recommended!', 5, 6, 1),
('Perfect size for my needs.', 5, 7, 1),
('The color is stunning!', 5, 8, 1),
('A bit too heavy for my liking.', 3, 9, 1),
('Good bag, but the price is high.', 4, 10, 1),
('Not my style, but good quality.', 3, 11, 1),

-- Lady Dior (8 reviews)
('Absolutely stunning! Worth the investment.', 5, 2, 2),
('Beautiful bag, but the size is a bit small.', 4, 3, 2),
('Classic and elegant.', 5, 4, 2),
('Luxurious and iconic.', 5, 5, 2),
('Nice design, but overpriced.', 3, 6, 2),
('Great craftsmanship.', 5, 7, 2),
('Received many compliments.', 5, 8, 2),
('The strap could be more comfortable.', 3, 9, 2),

-- Faye Day (12 reviews)
('My favorite bag! Perfect size and trendy design.', 5, 2, 3),
('Nice bag, but the color is a bit dull.', 4, 3, 3),
('Love the unique style.', 5, 4, 3),
('Chic and fashionable.', 5, 5, 3),
('Not worth the price.', 2, 6, 3),
('Versatile and functional.', 5, 7, 3),
('Good quality, but the strap broke.', 3, 8, 3),
('Received the wrong color.', 2, 9, 3),
('Excellent customer service.', 5, 10, 3),
('Too small for my belongings.', 3, 11, 3),
('Unique and eye-catching bag.', 4, 12, 3),
('The material is starting to wear off.', 3, 13, 3),

-- Puzzle (6 reviews)
('Unique and eye-catching bag.', 5, 2, 4),
('Good quality, but the price is high.', 4, 3, 4),
('Average bag, nothing special.', 3, 4, 4),
('Great craftsmanship.', 5, 5, 4),
('Not my style.', 2, 6, 4),
('Received many compliments.', 4, 7, 4),

-- Mini City (15 reviews)
('Cute and compact.', 4, 2, 5),
('Not enough storage space.', 3, 3, 5),
('Stylish and durable.', 5, 4, 5),
('Nice bag for casual outings.', 4, 5, 5),
('Too small for my needs.', 3, 6, 5),
('Great value for the price.', 4, 7, 5),
('Received the wrong color.', 2, 8, 5),
('The material feels cheap.', 2, 9, 5),
('Versatile and practical.', 4, 10, 5),
('The zipper broke after a few uses.', 2, 11, 5),
('Good for everyday use.', 4, 12, 5),
('Lightweight and easy to carry.', 5, 13, 5),
('Love the color options.', 5, 14, 5),
('The straps are not adjustable.', 3, 15, 5),
('Great bag, but the price is high.', 4, 16, 5),

-- Graffiti Backpack (9 reviews)
('Fun and vibrant design!', 5, 2, 6),
('A bit flashy for my taste.', 3, 3, 6),
('Unique and artsy.', 4, 4, 6),
('Good quality, but the price is steep.', 4, 5, 6),
('Not enough compartments.', 3, 6, 6),
('Received many compliments.', 4, 7, 6),
('The straps are not comfortable.', 3, 8, 6),
('Great for casual outings.', 4, 9, 6),
('Too small for my belongings.', 3, 10, 6),

-- Le Pliage Neo (7 reviews)
('Classic and practical.', 4, 2, 7),
('Love the color and durability.', 5, 3, 7),
('Great for travel.', 4, 4, 7),
('A reliable everyday bag.', 4, 5, 7),
('Received the wrong size.', 2, 6, 7),
('Versatile and stylish.', 4, 7, 7),
('The material is not water-resistant.', 3, 8, 7),

-- Classic Backpack (14 reviews)
('Simple and functional.', 4, 2, 8),
('Good value for the price.', 4, 3, 8),
('Not enough compartments.', 3, 4, 8),
('The straps are not durable.', 2, 5, 8),
('Great bag for school.', 4, 6, 8),
('Love the design and color options.', 5, 7, 8),
('Received the wrong item.', 2, 8, 8),
('The zipper is difficult to use.', 3, 9, 8),
('Sturdy and well-made.', 5, 10, 8),
('Too small for my books.', 3, 11, 8),
('Comfortable to wear.', 4, 12, 8),
('Nice bag for daily use.', 4, 13, 8),
('Received many compliments.', 4, 14, 8),
('Not as stylish as I hoped.', 3, 15, 8),

-- Speedy 35 (5 reviews)
('Classic and timeless.', 5, 2, 9),
('Great for travel.', 4, 3, 9),
('Love the monogram print.', 5, 4, 9),
('Not enough organization.', 3, 5, 9),
('Received many compliments.', 4, 6, 9),

-- Medium Phantom (11 reviews)
('Spacious and elegant.', 5, 2, 10),
('The leather quality is amazing!', 5, 3, 10),
('Great for work.', 4, 4, 10),
('Received the wrong color.', 2, 5, 10),
('Stylish and versatile.', 4, 6, 10),
('The bag is too heavy.', 3, 7, 10),
('Love the unique design.', 5, 8, 10),
('Not worth the price.', 3, 9, 10),
('Received many compliments.', 4, 10, 10),
('Good quality, but the size is small.', 4, 11, 10),
('The straps are not comfortable.', 3, 12, 10),

-- Rivington PM (13 reviews)
('Versatile and spacious.', 4, 2, 11),
('Love the Damier Ebene pattern.', 5, 3, 11),
('Great for work and travel.', 4, 4, 11),
('The bag is a bit heavy.', 3, 5, 11),
('Received many compliments.', 4, 6, 11),
('Good quality, but the price is high.', 4, 7, 11),
('The material feels cheap.', 2, 8, 11),
('Stylish and durable.', 5, 9, 11),
('Not enough compartments.', 3, 10, 11),
('Love the versatile strap options.', 5, 11, 11),
('Great bag for everyday use.', 4, 12, 11),
('Received the wrong item.', 2, 13, 11),
('The zipper is not smooth.', 3, 14, 11),

-- Striped Tote (3 reviews)
('Love the black and white stripes.', 5, 2, 12),
('Not enough storage space.', 3, 3, 12),
('Received the wrong color.', 2, 4, 12),

-- Soho Disco (4 reviews)
('Cute and compact.', 4, 2, 15),
('Not enough room for my essentials.', 3, 3, 15),
('Received the wrong color.', 2, 4, 15),
('Comfortable to wear.', 4, 5, 15),

-- Envelope Wristlet (7 reviews)
('Versatile and stylish.', 4, 2, 16),
('Love the blush pink color.', 5, 3, 16),
('Received many compliments.', 4, 4, 16),
('Not enough card slots.', 3, 5, 16),
('Good quality, but the price is high.', 4, 6, 16),
('The strap is too short.', 3, 7, 16),
('Compact and convenient.', 4, 8, 16),

-- Box Clutch (9 reviews)
('Elegant and glamorous.', 5, 2, 17),
('Nice clutch for special occasions.', 4, 3, 17),
('Received the wrong color.', 2, 4, 17),
('Love the gold finish.', 5, 5, 17),
('Not enough room for essentials.', 3, 6, 17),
('Received many compliments.', 4, 7, 17),
('Good quality, but the price is high.', 4, 8, 17),
('The clasp is not secure.', 3, 9, 17),
('Great for formal events.', 4, 10, 17),

-- Satin Clutch (6 reviews)
('Love the navy blue color.', 5, 2, 18),
('Not enough room for essentials.', 3, 3, 18),
('Received the wrong color.', 2, 4, 18),
('Stylish and elegant.', 4, 5, 18),
('Good quality, but the price is high.', 4, 6, 18),
('Compact and convenient.', 4, 7, 18);



