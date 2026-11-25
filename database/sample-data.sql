-- ============================================================================
-- Guitar Shop Database: Demonstration Seed Data
-- ============================================================================
-- Prerequisite : Run database/schema.sql first.
-- Execution    : mysql -u root -p < database/sample-data.sql
-- Note         : All customer, address, card, and credential records below are
--                fictional demonstration data for testing and portfolio review.
-- ============================================================================

USE my_guitar_shop;

START TRANSACTION;

-- ----------------------------------------------------------------------------
-- 1. Categories
-- ----------------------------------------------------------------------------
INSERT INTO categories (category_id, category_name) VALUES
  (1, 'Guitars'),
  (2, 'Basses'),
  (3, 'Drums'),
  (4, 'Keyboards');

-- ----------------------------------------------------------------------------
-- 2. Products
-- ----------------------------------------------------------------------------
INSERT INTO products (
  product_id,
  category_id,
  product_code,
  product_name,
  description,
  list_price,
  discount_percent,
  date_added
) VALUES
  (
    1, 1, 'strat', 'Fender Stratocaster',
    CONCAT_WS('\n',
      'The Fender Stratocaster is the electric guitar design that changed the world. New features include a tinted neck, parchment pickguard and control knobs, and a ''70s-style logo. Includes select alder body, 21-fret maple neck with your choice of a rosewood or maple fretboard, 3 single-coil pickups, vintage-style tremolo, and die-cast tuning keys. This guitar features a thicker bridge block for increased sustain and a more stable point of contact with the strings. At this low price, why play anything but the real thing?',
      '',
      'Features:',
      '* Thicker bridge block',
      '* 3-ply parchment pickguard',
      '* Tinted neck'
    ),
    699.00, 30.00, '2021-10-30 09:32:40'
  ),
  (
    2, 1, 'les_paul', 'Gibson Les Paul',
    CONCAT_WS('\n',
      'This Les Paul guitar offers a carved top and humbucking pickups. It has a simple yet elegant design. Cutting-yet-rich tone — the hallmark of the Les Paul — pours out of the 490R and 498T Alnico II magnet humbucker pickups, which are mounted on a carved maple top with a mahogany back. The faded finish models are equipped with BurstBucker Pro pickups and a mahogany top. Includes a Gibson hardshell case (faded and satin models come with a gig bag) and a limited lifetime warranty.',
      '',
      'Features:',
      '* Carved maple top and mahogany back (mahogany top on faded finish models)',
      '* Mahogany neck, ''59 Rounded Les Paul profile',
      '* Rosewood fingerboard (ebony on Alpine White)',
      '* Tune-O-Matic bridge with stopbar',
      '* Chrome or gold hardware',
      '* 490R and 498T Alnico II humbucker pickups (BurstBucker Pro on faded models)',
      '* 2 volume and 2 tone knobs, 3-way switch'
    ),
    1199.00, 30.00, '2021-12-05 16:33:13'
  ),
  (
    3, 1, 'sg', 'Gibson SG',
    CONCAT_WS('\n',
      'This Gibson SG electric guitar takes the best of the ''62 original and adds the longer and sturdier neck joint of the late ''60s models. Hot humbuckers go from rich, sweet lightning to warm, tingling waves of sustain. A silky-fast rosewood fretboard plays like a dream, and the original-style beveled mahogany body looks like a million bucks. Includes Tune-O-Matic bridge, chrome hardware, hardshell case, and a limited lifetime warranty.',
      '',
      'Features:',
      '* Double-cutaway beveled mahogany body',
      '* Set mahogany neck with rounded ''50s profile',
      '* Bound rosewood fingerboard with trapezoid inlays',
      '* Tune-O-Matic bridge with stopbar tailpiece',
      '* 490R neck humbucker and 498T bridge humbucker',
      '* 2 volume knobs, 2 tone knobs, 3-way switch',
      '* 24-3/4" scale length'
    ),
    2517.00, 52.00, '2022-02-04 11:04:31'
  ),
  (
    4, 1, 'fg700s', 'Yamaha FG700S',
    CONCAT_WS('\n',
      'The Yamaha FG700S solid-top acoustic guitar delivers an ideal balance of projection and pure tone. The expertly braced spruce top speaks clearly atop the rosewood body, paired with a rosewood fingerboard, rosewood bridge, die-cast tuners, body and neck binding, and a tortoise pickguard.',
      '',
      'Features:',
      '* Solid Sitka spruce top with rosewood back and sides',
      '* Rosewood fingerboard and bridge',
      '* White/black body and neck binding',
      '* Die-cast tuners and tortoise pickguard',
      '* Limited lifetime warranty'
    ),
    489.99, 38.00, '2022-06-01 11:12:59'
  ),
  (
    5, 1, 'washburn', 'Washburn D10S',
    CONCAT_WS('\n',
      'The Washburn D10S acoustic guitar is crafted with a solid spruce top and mahogany back and sides for warm, balanced tone. A mahogany neck and rosewood fingerboard make fretwork effortless, while chrome Grover-style tuners keep you reliably in tune. Includes a limited lifetime warranty.',
      '',
      'Features:',
      '* Solid spruce top with mahogany back and sides',
      '* Mahogany neck with rosewood fingerboard',
      '* Chrome Grover-style tuning machines'
    ),
    299.00, 0.00, '2022-07-30 13:58:35'
  ),
  (
    6, 1, 'rodriguez', 'Rodriguez Caballero 11',
    CONCAT_WS('\n',
      'Featuring a solid Canadian cedar top and laminated bubinga back and sides, the Caballero 11 classical guitar offers rich warmth and clarity. The headstock and fretboard are Indian rosewood, fitted with nickel-plated tuners, silver-plated frets, and intricate wood rosette inlays.',
      '',
      'Craftsmanship:',
      '* Solid Canadian cedar top with bubinga back and sides',
      '* Indian rosewood headstock and fretboard',
      '* Tonewoods aged a minimum of 2 years in a humidity-controlled workshop'
    ),
    415.00, 39.00, '2022-07-30 14:12:41'
  ),
  (
    7, 2, 'precision', 'Fender Precision',
    CONCAT_WS('\n',
      'The Fender Precision bass guitar delivers the punchy sound, classic look, and comfortable feel modern bassists expect. Built with a resonant alder body and a split single-coil pickup, it honours the iconic P-Bass legacy.',
      '',
      'Features:',
      '* Alder body with maple modern C-shape neck (tinted satin urethane finish)',
      '* Rosewood or maple fingerboard, 9-1/2" radius, 20 medium-jumbo frets',
      '* Standard Precision Bass split single-coil mid pickup',
      '* Master volume and tone controls with knurled chrome knobs',
      '* 34" scale length and 1-5/8" nut width'
    ),
    799.99, 30.00, '2022-06-01 11:29:35'
  ),
  (
    8, 2, 'hofner', 'Hofner Icon',
    CONCAT_WS('\n',
      'Inspired by the legendary violin bass, the Hofner Icon brings warm, woody semi-hollow tone within reach. Built with a real spruce top, flamed maple back and sides, and a comfortable set neck.',
      '',
      'Features:',
      '* Spruce top with flamed maple back and sides',
      '* Set neck with rosewood fretboard and dot inlays',
      '* 30" short scale with 22 frets'
    ),
    499.99, 25.00, '2022-07-30 14:18:33'
  ),
  (
    9, 3, 'ludwig', 'Ludwig 5-Piece Drum Set with Cymbals',
    CONCAT_WS('\n',
      'Complete 5-piece Ludwig drum kit paired with a Zildjian starter cymbal pack and full hardware set, ready to play out of the box.',
      '',
      'Features:',
      '* 22" x 16" kick drum, 12" x 10" and 13" x 11" toms, 16" x 16" floor tom, 14" x 6-1/2" snare',
      '* Includes bass pedal, snare stand, straight cymbal stand, hi-hat stand, and throne',
      '* Zildjian cymbal pack: 14" crash, 18" crash/ride, and pair of 13" hi-hats'
    ),
    699.99, 30.00, '2022-07-30 12:46:40'
  ),
  (
    10, 3, 'tama', 'Tama 5-Piece Drum Set with Cymbals',
    CONCAT_WS('\n',
      'The Tama 5-piece Drum Set brings pro-inspired shell construction and hardware stability to an accessible price point, bundled with German-made Meinl HCS brass cymbals.',
      '',
      'Features:',
      '* 100% poplar 6-ply (7.5 mm) shells with precision bearing edges',
      '* Accu-Tune bass drum hoops, spur brackets, and original small lugs',
      '* Meinl HCS cymbal set: 14" hi-hats, 16" crash, and 20" ride cymbal'
    ),
    799.99, 15.00, '2022-07-30 13:14:15'
  );

-- ----------------------------------------------------------------------------
-- 3. Customers
-- ----------------------------------------------------------------------------
INSERT INTO customers (
  customer_id, email_address, password, first_name, last_name, shipping_address_id, billing_address_id
) VALUES
  (1, 'allan.sherwood@yahoo.com',   '650215acec746f0e32bdfff387439eefc1358737', 'Allan',     'Sherwood',   1,  2),
  (2, 'barryz@gmail.com',           '3f563468d42a448cb1e56924529f6e7bbe529cc7', 'Barry',     'Zimmer',     3,  3),
  (3, 'christineb@solarone.com',    'ed19f5c0833094026a2f1e9e6f08a35d26037066', 'Christine', 'Brown',      4,  4),
  (4, 'david.goldstein@hotmail.com','b444ac06613fc8d63795be9ad0beaf55011936ac', 'David',     'Goldstein',  5,  6),
  (5, 'erinv@gmail.com',            '109f4b3c50d7b0df729d299bc6f8e9ef9066971f', 'Erin',      'Valentino',  7,  7),
  (6, 'frankwilson@sbcglobal.net',  '3ebfa301dc59196f18593c45e519287a23297589', 'Frank Lee', 'Wilson',     8,  8),
  (7, 'gary_hernandez@yahoo.com',   '1ff2b3704aede04eecb51e50ca698efd50a1379b', 'Gary',      'Hernandez',  9, 10),
  (8, 'heatheresway@mac.com',       '911ddc3b8f9a13b5499b6bc4638a2b4f3f68bf23', 'Heather',   'Esway',     11, 12);

-- ----------------------------------------------------------------------------
-- 4. Customer Addresses
-- ----------------------------------------------------------------------------
INSERT INTO addresses (
  address_id, customer_id, line1, line2, city, state, zip_code, phone, disabled
) VALUES
  ( 1, 1, '100 East Ridgewood Ave.', NULL,       'Paramus',        'NJ', '07652', '201-653-4472', 0),
  ( 2, 1, '21 Rosewood Rd.',         NULL,       'Woodcliff Lake', 'NJ', '07677', '201-653-4472', 0),
  ( 3, 2, '16285 Wendell St.',       NULL,       'Omaha',          'NE', '68135', '402-896-2576', 0),
  ( 4, 3, '19270 NW Cornell Rd.',    NULL,       'Beaverton',      'OR', '97006', '503-654-1291', 0),
  ( 5, 4, '186 Vermont St.',         'Apt. 2',   'San Francisco',  'CA', '94110', '415-292-6651', 0),
  ( 6, 4, '1374 46th Ave.',          NULL,       'San Francisco',  'CA', '94129', '415-292-6651', 0),
  ( 7, 5, '6982 Palm Ave.',          NULL,       'Fresno',         'CA', '93711', '559-431-2398', 0),
  ( 8, 6, '23 Mountain View St.',    NULL,       'Denver',         'CO', '80208', '303-912-3852', 0),
  ( 9, 7, '7361 N. 41st St.',        'Apt. B',   'New York',       'NY', '10012', '212-335-2093', 0),
  (10, 7, '3829 Broadway Ave.',      'Suite 2',  'New York',       'NY', '10012', '212-239-1208', 0),
  (11, 8, '2381 Buena Vista St.',    NULL,       'Los Angeles',    'CA', '90023', '213-772-5033', 0),
  (12, 8, '291 W. Hollywood Blvd.',  NULL,       'Los Angeles',    'CA', '90024', '213-391-2938', 0);

-- ----------------------------------------------------------------------------
-- 5. Orders
-- ----------------------------------------------------------------------------
INSERT INTO orders (
  order_id, customer_id, order_date, ship_amount, tax_amount, ship_date,
  ship_address_id, card_type, card_number, card_expires, billing_address_id
) VALUES
  (1, 1, '2022-03-28 09:40:28',  5.00, 32.32, '2022-03-30 15:32:51', 1, 'Visa',             '4111111111111111', '04/2020',  2),
  (2, 2, '2022-03-28 11:23:20',  5.00,  0.00, '2022-03-29 12:52:14', 3, 'Visa',             '4012888888881881', '08/2023',  3),
  (3, 1, '2022-03-29 09:44:58', 10.00, 89.92, '2022-03-31 09:11:41', 1, 'Visa',             '4111111111111111', '04/2021',  2),
  (4, 3, '2022-03-30 15:22:31',  5.00,  0.00, '2022-04-03 16:32:21', 4, 'American Express', '378282246310005',  '04/2020',  4),
  (5, 4, '2022-03-31 05:43:11',  5.00,  0.00, '2022-04-02 14:21:12', 5, 'Visa',             '4111111111111111', '04/2023',  6),
  (6, 5, '2022-03-31 18:37:22',  5.00,  0.00, NULL,                  7, 'Discover',         '6011111111111117', '04/2023',  7),
  (7, 6, '2022-04-01 23:11:12', 15.00,  0.00, '2022-04-03 10:21:35', 8, 'MasterCard',       '5555555555554444', '04/2023',  8),
  (8, 7, '2022-04-02 11:26:38',  5.00,  0.00, NULL,                  9, 'Visa',             '4012888888881881', '04/2023', 10),
  (9, 4, '2022-04-03 12:22:31',  5.00,  0.00, NULL,                  5, 'Visa',             '4111111111111111', '04/2023',  6);

-- ----------------------------------------------------------------------------
-- 6. Order Line Items
-- ----------------------------------------------------------------------------
INSERT INTO order_items (
  item_id, order_id, product_id, item_price, discount_amount, quantity
) VALUES
  ( 1, 1,  2, 1199.00,  359.70, 1),
  ( 2, 2,  4,  489.99,  186.20, 1),
  ( 3, 3,  3, 2517.00, 1308.84, 1),
  ( 4, 3,  6,  415.00,  161.85, 1),
  ( 5, 4,  2, 1199.00,  359.70, 2),
  ( 6, 5,  5,  299.00,    0.00, 1),
  ( 7, 6,  5,  299.00,    0.00, 1),
  ( 8, 7,  1,  699.00,  209.70, 1),
  ( 9, 7,  7,  799.99,  240.00, 1),
  (10, 7,  9,  699.99,  210.00, 1),
  (11, 8, 10,  799.99,  120.00, 1),
  (12, 9,  1,  699.00,  209.70, 1);

-- ----------------------------------------------------------------------------
-- 7. Administrators
-- ----------------------------------------------------------------------------
INSERT INTO administrators (
  admin_id, email_address, password, first_name, last_name
) VALUES
  (1, 'admin@myguitarshop.com', '6a718fbd768c2378b511f8249b54897f940e9022', 'Admin', 'User'),
  (2, 'joel@murach.com',        '971e95957d3b74d70d79c20c94e9cd91b85f7aae', 'Joel',  'Murach'),
  (3, 'mike@murach.com',        '3f2975c819cefc686282456aeae3a137bf896ee8', 'Mike',  'Murach');

COMMIT;

-- ----------------------------------------------------------------------------
-- Seed Verification Summary
-- ----------------------------------------------------------------------------
SELECT 'categories'     AS table_name, COUNT(*) AS row_count FROM categories
UNION ALL SELECT 'products',           COUNT(*) FROM products
UNION ALL SELECT 'customers',          COUNT(*) FROM customers
UNION ALL SELECT 'addresses',          COUNT(*) FROM addresses
UNION ALL SELECT 'orders',             COUNT(*) FROM orders
UNION ALL SELECT 'order_items',        COUNT(*) FROM order_items
UNION ALL SELECT 'administrators',     COUNT(*) FROM administrators;