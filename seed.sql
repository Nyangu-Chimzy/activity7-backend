INSERT INTO records (title, category, description, status)
SELECT * FROM (VALUES
                   ('Wi-Fi not working in Lab 2', 'Network', 'Computers in Lab 2 cannot connect to the Wi-Fi.', 'Pending'),
                   ('Install Python on lab PCs', 'Software', 'Students need Python installed for the programming class.', 'In progress'),
                   ('Broken laptop screen', 'Hardware', 'The lecturer laptop screen is cracked.', 'Pending'),
                   ('Printer jam in office', 'Hardware', 'The office printer keeps jamming paper.', 'Completed'),
                   ('Forgot student portal password', 'Software', 'A student cannot log in to the portal.', 'Completed'),
                   ('Slow internet in library', 'Network', 'Internet is very slow in the afternoon.', 'In progress'),
                   ('Projector will not turn on', 'Hardware', 'The projector in Room A4 shows no power light.', 'Pending'),
                   ('Antivirus update failed', 'Software', 'The antivirus shows an error when updating.', 'In progress')
              ) AS v(title, category, description, status)
WHERE NOT EXISTS (SELECT 1 FROM records);