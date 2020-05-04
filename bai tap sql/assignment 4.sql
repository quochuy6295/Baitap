USE test;
/* bai 4 */
/*cau 1: lấy ra danh sách nhân viên và thông tin phòng ban của ho */

SELECT 
    fullname, department_name
FROM
    `account` AS ac
        JOIN
    department AS de ON ac.department_id = de.department_id; 
 
/* câu 2: Lấy ra thông tin các account tạo sau ngày 20/12/2010 (nếu có thêm chức vụ)*/
SELECT 
    email, username,fullname,de.department_name as bo_phan, po.position_name as chuc_vu,createdate 
FROM
    `account` as ac Join department as de
ON ac.department_id = de.department_id
JOIN position as po 
ON po.position_id = ac.position_id
WHERE ac.createdate > '2010-12-20';

/* cau 3: viết câu lệnh để lấy ra tất cả các developer */
SELECT 
    *
FROM
    `account` AS ac
        JOIN
    position AS po ON ac.position_id = po.position_id
WHERE
    po.position_name = 'developer';
    
/* cau 4: viet cau lẹnh dể lấy ra phòng ban có > 3 nhân viên */
SELECT 
    department_name as bo_phan, COUNT(ac.department_id) as thanhvien
FROM
    department AS de
JOIN
    `account` AS ac ON de.department_id = ac.department_id
GROUP BY department_name
HAVING COUNT(ac.department_id) > 3;

/* Câu 5: viet lẹnh để lấy ra danh sách câu hỏi được sử dụng nhiều nhất trong đề thi*/
SELECT 
    qu.content AS tencauhoi,
    COUNT(ex.category_id) AS solancauhoi
FROM
    question AS qu
        JOIN
    exam AS ex ON ex.category_id = qu.category_id
GROUP BY ex.category_id
ORDER BY COUNT(ex.category_id) DESC
LIMIT 1;

/* cau 6: thống kê mỗi categoryquestion được dùng mấy question */
SELECT 
    ca.category_name AS tencauhoi,
    COUNT(qu.question_id) AS soluongcauhoi
FROM
    categoryquestion AS ca
        JOIN
    question AS qu ON ca.category_id = qu.category_id
GROUP BY qu.category_id;
 
 /* cau 7: thống kê mỗi question được sử dụng trong bao nhiêu exam  */
 SELECT qu.content as cauhoi, count(qu.question_id)
 FROM question as qu JOIN exam as ex
 ON qu.category_id = ex.category_id
 GROUP BY qu.question_id;
 
 
 /* cau 8: lấy ra question có nhiều câu trả lời nhất */
 SELECT 
    qu.content AS cauhoi, COUNT(an.question_id) AS socautraloi
FROM
    question AS qu
        JOIN
    answer AS an ON qu.question_id = an.question_id
GROUP BY an.question_id;

/* cau 9:Thống kế lượng lượng account trong mỗi group */
SELECT gr.group_id, count(ac.account_id)
FROM groupaccount as gr JOIN `account`as ac
ON gr.account_id = ac.account_id
GROUP BY gr.group_id;

/*cau 10:Tìm chức vụ có ít người nhất*/
SELECT po.position_name, count(ac.account_id)
FROM position as po JOIN `account` as ac
ON po.position_id = ac.position_id
GROUP BY po.position_id
ORDER BY count(account_id) asc;

/* cau 11:thống kê mỗi phòng ban có bao nhiêu dev, test, scrum master, PM*/
SELECT de.department_name, count(po.position_id)
FROM position as po JOIN `account` as ac
ON po.position_id = ac.position_id
JOIN department as de
ON de.department_id = ac.department_id
WHERE po.position_name = 'dev' OR po.position_name = 'test'or po.position_name = 'PM'
GROUP BY ac.department_id, ac.position_id;
/* cau 12:Lấy thông tin chi tiết của câu hỏi bao gồm: thông tin cơ bản của
question, loại câu hỏi, ai là người tạo ra câu hỏi, câu trả lời là gì*/
SELECT qu.content, qu.type_id, qu.creator_id, an.answer_id
FROM question as qu JOIN answer as an 
ON qu.question_id = an.question_id;

/*cau 13 lấy ra số lượng câu hỏi của mỗi loại tự luận hay trắc nghiệm*/
/* cau 14: lấy ra group không có account nào*/
SELECT ga.group_id, count(ga.account_id)
FROM groupaccount as ga LEFT JOIN `group` as gr ON ga.group_id = gr.group_id
GROUP BY ga.group_id
HAVING COUNT(ga.account_id) =0;

/*cau 15: lấy ra question không có answer nào*/
SELECT qu.content as tencauho, count(an.answer_id) as socautraloi
FROM question as qu LEFT JOIN answer as an
ON qu.question_id = an.question_id
GROUP BY an.question_id
ORDER BY COUNT(an.answer_id)
LIMIT 1;

/* exercise 2: UNION*/
/*Lấy các account thuộc nhóm thứ 1
Lấy các account thuộc nhóm thứ 2
Ghép 2 kết quả từ câu a) và câu b) sao cho không có record nào trùng nhau*/
SELECT ga.account_id 
FROM groupaccount as ga
WHERE group_id =1
UNION 
SELECT ga.account_id
FROM groupaccount as ga
WHERE group_id =2;

/*Lấy các group có lớn hơn 5 thành viên
b) Lấy các group có nhỏ hơn 7 thành viên
c) Ghép 2 kết quả từ câu a) và câu b)*/

SELECT gr.group_id 
FROM groupaccount as gr
GROUP BY gr.group_id
HAVING count(gr.account_id) >5
UNION ALL
SELECT gr.group_id 
FROM groupaccount as gr
GROUP BY gr.group_id
HAVING count(gr.account_id) <7;














