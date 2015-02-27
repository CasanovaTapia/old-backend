$interpolateProvider.startSymbol('[[').endSymbol(']]');
$httpProvider.defaults.xsrfCookieName = 'csrftoken';
$httpProvider.defaults.xsrfHeaderName = 'X-CSRFToken';
$resourceProvider.defaults.stripTrailingSlashes = false;
