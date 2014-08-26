-- Central person for a tag
select top 100 p1.p_personid, sum (tr1.tr_score + tr2.tr_score) as sc
from person p1, knows, person p2, 
person_tag_rel tr1, person_tag_rel tr2 
where tr1.tr_tag = 'Franz_Kafka' and tr2.tr_tag = 'Franz_Kafka'
      and tr1.tr_personid = p1.p_personid and tr2.tr_personid = p2.p_personid 
      and p1.p_personid = k_person1id and p2.p_personid = k_person2id
group by p1.p_personid
order by sc desc;
