$(document).ready(function() {
    $('#form')
        .formValidation({
            framework: 'bootstrap',
            icon: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                type1: {
                    validators: {
                        notEmpty: {
                            message: 'Please select a type'
                        }
                    }
                },
                
            }
        })
        
        .on('success.field.fv', function(e, data) {
            if (data.field === 'otherChannel') {
                var channel = $('#surveyForm').find('[name="type1"]:checked').val();
                // User choose given channel
                    }
        });
});