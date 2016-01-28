$(function () {


	var form = $('.addProperty'),
		updateForm = $('.updateProperty'),
		propertyList = $('.propertyList'),
		delBtn = propertyList.find('tr .delete'),
		token = $('meta[name="csrf-token"]').attr('content');

	var postData = function () {

        var routeTo  = arguments[0],
            formdata = arguments[1],
            cbSuccess = arguments[2],
            method   = 'POST';

            $.ajax({
	              url        : routeTo,
	              type       : method,
	              data       : formdata,
	              processData: false,
	              contentType: false,
	              headers: {
	                    'X-CSRF-TOKEN': token
	              },
	              success    : cbSuccess || function () {}
            });
    }

  	form.on('submit', function (e) {
  		e.preventDefault();
  		var callBack = function (response) {
  			if (response) {
  				alert('Successfully Created	');
  				window.location.href = '/dashboard';
  			}
  		}
        postData('/property/createProperty', new FormData(this), callBack);
  	});

  	updateForm.on('submit', function (e) {
  		e.preventDefault();
  		var propertyId = $(this).find('.propertyId').val();
  		var callBack = function (response) {
  			if (response) {
  				alert('Successfully Updated	');
  				window.location.href = '/dashboard';
  			}
  		}
        postData('/property/update/'+propertyId, new FormData(this), callBack);
  	});

  	delBtn.on('click', function (e) {
  		e.preventDefault();
  		var propertyId = $(this).data('property');
  		var callBack = function (response) {
  			alert('Successfully Deleted	');
  			if (response) {
  				propertyList.find('tr.property-'+propertyId).remove();
  			}
  		}
  		postData('/property/delete/'+propertyId, {}, callBack);

  	})


});