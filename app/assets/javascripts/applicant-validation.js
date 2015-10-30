$("#new_applicant").validate({

    // Specify the validation rules
    rules: {
        "applicant[first_name]": "required",
        "applicant[middle_name]": "required",
        "applicant[last_name]": "required",
        "applicant[gender]": "required",
        "applicant[dob]": "required",
        "applicant[email]": "required",
        "applicant[avatar]": "required",
        "applicant[addresses_attributes][0][detail]": "required",
        "applicant[addresses_attributes][0][city]": "required",
        "applicant[addresses_attributes][0][state]": "required",
        "applicant[addresses_attributes][0][pin]": "required",
        "applicant[addresses_attributes][0][telephone]": "required",
        "applicant[addresses_attributes][0][mobile]": "required",
        "applicant[addresses_attributes][1][detail]": "required",
        "applicant[addresses_attributes][1][city]": "required",
        "applicant[addresses_attributes][1][state]": "required",
        "applicant[addresses_attributes][1][pin]": "required",
        "applicant[addresses_attributes][1][telephone]": "required",
        "applicant[addresses_attributes][1][mobile]": "required"
    },
    
    // Specify the validation error messages
    messages: {
        "applicant[first_name]": "required",
        "applicant[middle_name]": "required",
        "applicant[last_name]": "required",
        "applicant[gender]": "required",
        "applicant[dob]": "required",
        "applicant[email]": "required",
        "applicant[avatar]": "required",
        "applicant[addresses_attributes][0][detail]": "required",
        "applicant[addresses_attributes][0][city]": "required",
        "applicant[addresses_attributes][0][state]": "required",
        "applicant[addresses_attributes][0][pin]": "required",
        "applicant[addresses_attributes][0][telephone]": "required",
        "applicant[addresses_attributes][0][mobile]": "required",
        "applicant[addresses_attributes][1][detail]": "required",
        "applicant[addresses_attributes][1][city]": "required",
        "applicant[addresses_attributes][1][state]": "required",
        "applicant[addresses_attributes][1][pin]": "required",
        "applicant[addresses_attributes][1][telephone]": "required",
        "applicant[addresses_attributes][1][mobile]": "required"
    },
    
    submitHandler: function(form) {
        form.preventDefault();
        // form.submit();
    }
});

