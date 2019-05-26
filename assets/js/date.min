$(document).ready(function() {
  var date = new Date();
  var today = new Date(date.getFullYear(), date.getMonth(), date.getDate());
  var tomorrow = new Date(date.getFullYear(), date.getMonth(), (date.getDate() + 1));
  var end = new Date(date.getFullYear(), date.getMonth(), (date.getDate() + 1));
	
  $('#datepicker1').datepicker({
    format: "mm/dd/yyyy",
    todayHighlight: true,
    startDate: today,
    endDate: end,
    autoclose: true
  });
  $('#datepicker2').datepicker({
    format: "mm/dd/yyyy",
    startDate: tomorrow,
    endDate: end,
    autoclose: true
  });
 
  $('#datepicker1').datepicker('setDate', '0');
  var datepicker2 = (date.getMonth() + 1) + '/' +  (date.getDate() + 1) + '/' +  date.getFullYear();

  $('#datepicker2').datepicker('setDate', datepicker2);

});