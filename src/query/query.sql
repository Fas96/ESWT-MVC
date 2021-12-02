-- to group columns when they join
SELECT product.id, product.name,
       (SELECT group_concat(CONCAT('["',images.url, '",',  images.order_number,']')) FROM images WHERE images.product_id = product.id GROUP BY (product.id)) AS IMAGES_LIST,
       (SELECT GROUP_CONCAT(CONCAT('["',prices.combination, '","', prices.currency, '",', prices.price,"]" )) FROM prices WHERE prices.product_id = product.id GROUP BY (product.id)) AS PRICE_LIST,
       (SELECT GROUP_CONCAT(CONCAT('["',quantites.combination, '",',  quantites.quantity,"]")) FROM quantites WHERE quantites.product_id = product.id GROUP BY (product.id)) AS Quantity_LIST
FROM product WHERE product.id = 1;

--  selecting members who answered and their roles
SELECT DISTINCT m.*,(select GROUP_CONCAT(CONCAT('["',mr.authority,"]")) from member_roles mr where mr.username=m.member_id group by (mr.username)  ) as ROLES FROM  member m inner join  answer a on m.member_id=a.member_id ;
