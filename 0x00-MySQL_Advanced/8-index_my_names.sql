-- creates an index in the first character of the name column
CREATE INDEX idx_name_first ON names (name(1));
