-- Createsa a composite index on first Letter if name column and score column
CREATE INDEX idx_name_first_score ON names (name(1), score);
