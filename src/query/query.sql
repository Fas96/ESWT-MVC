-- to group columns when they join
SELECT product.id, product.name,
       (SELECT group_concat(CONCAT('["',images.url, '",',  images.order_number,']')) FROM images WHERE images.product_id = product.id GROUP BY (product.id)) AS IMAGES_LIST,
       (SELECT GROUP_CONCAT(CONCAT('["',prices.combination, '","', prices.currency, '",', prices.price,"]" )) FROM prices WHERE prices.product_id = product.id GROUP BY (product.id)) AS PRICE_LIST,
       (SELECT GROUP_CONCAT(CONCAT('["',quantites.combination, '",',  quantites.quantity,"]")) FROM quantites WHERE quantites.product_id = product.id GROUP BY (product.id)) AS Quantity_LIST
FROM product WHERE product.id = 1;

--  selecting members who answered and their roles
SELECT DISTINCT m.*,(select GROUP_CONCAT(CONCAT('["',mr.authority,"]")) from member_roles mr where mr.username=m.member_id group by (mr.username)  ) as ROLES FROM  member m inner join  answer a on m.member_id=a.member_id ;

-- changing the grade table
ALTER TABLE eswtmvc.grade
    ADD (
        Logic   tinyint,
        Mechnics   tinyint,
        Content tinyint
        );


-- FOR INSERTING OR UPDATING THE GRADE TABLE IF UNIQUE VALUES ALREADY EXIST OR NOT

INSERT INTO eswtmvc.grade (`question_id`, `member_id`, `question_type`, `answer_taskCompletion`,`answer_fluency`,
    `answer_coherence`, `answer_pronounciation`, `score`) values (11, 21, 'LISTENING', 7, 7,
                                                                  7, 7, 77) on DUPLICATE KEY UPDATE `member_id` = 21, `question_id`=11, `member_id`=21, `question_type`='LISTENING',
    `answer_taskCompletion`=10,`answer_fluency`=10,
    `answer_coherence`= 10 , `answer_pronounciation`= 10 , `score`= 10;

-- ALL THE FIELDS FOR INSERTING OR UPDATING THE GRADE TABLE IF UNIQUE VALUES ALREADY EXIST OR NOT
INSERT INTO eswtmvc.grade (`question_id`, `member_id`, `question_type`,`session_id`, `answer_taskCompletion`,`answer_fluency`,
    `answer_coherence`, `answer_pronounciation`,`answer_languageUse`,`answer_grammar`,
    `isMarked`,`answer_memo`,`Logic`,`Mechnics`,`Content`,
    `score`) values (`question_id`, `member_id`, `question_type`,`session_id`, `answer_taskCompletion`,`answer_fluency`,
`answer_coherence`, `answer_pronounciation`,`answer_languageUse`,`answer_grammar`,
`isMarked`,`answer_memo`,`Logic`,`Mechnics`,`Content`,
 `score`) on DUPLICATE KEY UPDATE `question_id`=0, `member_id`=0, `question_type`=0,`session_id`=0, `answer_taskCompletion`=0
 ,`answer_fluency`=0,
`answer_coherence`=0, `answer_pronounciation`=0,`answer_languageUse`=0,`answer_grammar`=0,
`isMarked`=0,`answer_memo`=0,`Logic`=0,`Mechnics`=0,`Content`=0,
 `score`=0;



-- PREVIOUS INSERTION QUERY
--         INSERT INTO grade(question_id,  member_id,question_type, session_id, answer_taskCompletion,
--                           answer_fluency,answer_coherence,answer_pronounciation,answer_grammar,
--                           score,isMarked, answer_memo)
--         VALUES(#{question_id}, #{member_id}, #{question_type}, #{session_id}, #{answer_taskCompletion},
--                #{answer_fluency},#{answer_coherence},#{answer_pronounciation},#{answer_grammar},
--                #{score},#{isMarked},#{answer_memo})