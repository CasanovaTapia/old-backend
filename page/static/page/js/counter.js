var options = {
  useEasing : true,
  useGrouping : true,
  separator : ',',
  decimal : '.',
  prefix : 'Money Spent $',
  suffix : ''
}
var marv = new countUp("detail-banker", 0, 15139, 0, 2.5, options);
marv.start();
