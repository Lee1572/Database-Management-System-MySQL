const examples = {
  catalog: {
    label: 'PRODUCT CATALOGUE',
    code: `SELECT p.product_name, c.category_name, p.list_price
FROM products AS p
JOIN categories AS c
  ON c.category_id = p.category_id
ORDER BY c.category_name, p.product_name;`,
    note: 'Joins products to their category so each catalogue item is displayed with its classification.',
  },
  shipping: {
    label: 'SHIPMENT STATUS',
    code: `SELECT
    CASE WHEN ship_date IS NULL THEN 'NOT SHIPPED' ELSE 'SHIPPED' END AS ship_status,
    order_id, order_date, ship_date
FROM orders
ORDER BY order_date;`,
    note: 'Uses a CASE expression to classify each order according to whether a shipment date has been recorded.',
  },
  report: {
    label: 'CATEGORY REPORT',
    code: `SELECT c.category_name,
       COUNT(p.product_id) AS product_count,
       MAX(p.list_price) AS highest_list_price
FROM categories AS c
LEFT JOIN products AS p
  ON p.category_id = c.category_id
GROUP BY c.category_id, c.category_name
ORDER BY product_count DESC;`,
    note: 'Combines LEFT JOIN, COUNT and MAX to summarise the product catalogue by category.',
  },
};

const tabs = [...document.querySelectorAll('[data-query]')];
const code = document.getElementById('query-code');
const label = document.getElementById('query-label');
const note = document.getElementById('query-note');

function selectExample(selectedTab) {
  tabs.forEach((tab) => {
    const isActive = tab === selectedTab;

    tab.classList.toggle('active', isActive);
    tab.setAttribute('aria-selected', String(isActive));
  });

  const example = examples[selectedTab.dataset.query];
  code.textContent = example.code;
  label.textContent = example.label;
  note.textContent = example.note;
}

tabs.forEach((tab) => {
  tab.addEventListener('click', () => selectExample(tab));
});

const copyButton = document.getElementById('copy-query');

copyButton.addEventListener('click', async (event) => {
  const button = event.currentTarget;

  try {
    await navigator.clipboard.writeText(code.textContent);
    button.textContent = 'Copied';
  } catch {
    button.textContent = 'Select and copy';
  }

  setTimeout(() => {
    button.textContent = 'Copy SQL';
  }, 1600);
});
