-- creates a procedure that computes and store the average
-- weighted score for a student
DELIMITER $$
CREATE PROCEDURE ComputeAverageWeightScoreForUser(
    IN user_id INT
)
BEGIN
    DECLARE weighted_avg FLOAT;

    SELECT SUM(c.score * p.weight) / SUM(p.weight) INTO weighted_avg
    FROM corrections c
    JOIN projects p ON c.project_id = p.id
    WHERE c.user_id = user_id

    UPDATE users
    SET average_score = weighted_avg
    WHERE id = user_id;
END$$
DELIMITER ;
