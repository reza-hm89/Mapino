$('#myTab a').click(function (e) {
  e.preventDefault()
  $(this).tab('show')
})
$('#myTab a[href="#creative"]').tab('show') // Select tab by name
$('#myTab a[href="#bootstrap"]').tab('show') // Select tab by name
$('#myTab a[href="#responsive"]').tab('show')// Select tab by name
$('#myTab a[href="#customize"]').tab('show')// Select tab by name
$('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
  e.target // activated tab
  e.relatedTarget // previous tab
})