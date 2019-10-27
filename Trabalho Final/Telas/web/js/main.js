    //  Input Masks
$('#cpf').keyup(function() {
    var cpf = this.value;
    var num = cpf.replace(/[^\d]/g, ''); //remove todos os caracteres não numéricos
    var len = num.length; //guarda o número de digitos até o momento

  if(len <= 6){
    cpf = num.replace(/(\d{3})(\d{1,3})/g, '$1.$2');  
  }else if(len <= 9){
    cpf = num.replace(/(\d{3})(\d{3})(\d{1,3})/g, '$1.$2.$3');
  }else{
    cpf = num.replace(/(\d{3})(\d{3})(\d{3})(\d{1,2})/g, "$1.$2.$3-$4");
  }
  this.value = cpf;
});
$('#cpf').blur(function() {
    var strCPF = this.value.replace(/\./g, '').replace(/\-/g,'');
    var Soma;
    var Resto;
    Soma = 0;
    if (strCPF === "00000000000") return false;
     
    for (i=1; i<=9; i++) Soma = Soma + parseInt(strCPF.substring(i-1, i)) * (11 - i);
    Resto = (Soma * 10) % 11;
   
    if ((Resto === 10) || (Resto === 11))  Resto = 0;
    if (Resto !== parseInt(strCPF.substring(9, 10)) ){
        this.value = '';
        $(this).css('border-color', 'red');
        return;
    }
   
    Soma = 0;
    for (i = 1; i <= 10; i++) Soma = Soma + parseInt(strCPF.substring(i-1, i)) * (12 - i);
    Resto = (Soma * 10) % 11;
   
    if ((Resto === 10) || (Resto === 11))  Resto = 0;
    if (Resto !== parseInt(strCPF.substring(10, 11) ) ){
        this.value = '';
        $(this).css('border-color', 'red');
        return;
    }
    $(this).css('border-color', '#030303');
});
$('#email').blur(function() {
    var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    if (!filter.test(this.value)) {
        this.value = '';
        $(this).css('border-color', 'red');
        return;
    }
    $(this).css('border-color', '#030303');
});
$('#housenumber').keyup(function() {
    var housenumber = this.value;
    var num = housenumber.replace(/[^\d]/g, '');
    this.value = num;
});
$('#cep').keyup(function() {
    var cep = this.value;
    var num = cep.replace(/[^\d]/g, ''); //remove todos os caracteres não numéricos
    var len = num.length; //guarda o número de digitos até o momento

    if(len <= 5){
        cep = num.replace(/(\d{2})(\d{1,3})/g, '$1.$2');  
    }else if(len <= 8){
        cep = num.replace(/(\d{2})(\d{3})(\d{1,3})/g, '$1.$2-$3');
    }
    this.value = cep;
});
$('#cep').blur(function() {
    var strCEP = this.value.replace(/\./g, '').replace(/\-/g,'');
    if (strCEP.length !== 8){
        this.value = '';
        $(this).css('border-color', 'red');
        return;
    }
    $(this).css('border-color', '#030303');
});
$('#phone').keyup(function() {
    var phone = this.value;
    var num = phone.replace(/[^\d]/g, ''); //remove todos os caracteres não numéricos
    var len = num.length; //guarda o número de digitos até o momento

    if(len <= 6){
        phone = num.replace(/(\d{2})(\d{1,4})/g, '($1)$2');  
    }else if(len <= 10){
        phone = num.replace(/(\d{2})(\d{4})(\d{1,4})/g, '($1)$2-$3');
    }else if(len === 11){
        phone = num.replace(/(\d{2})(\d{5})(\d{4})/g, '($1)$2-$3');
    }
    this.value = phone;
});
$('#phone').blur(function() {
    var strPhone = this.value.replace(/\(/g,'').replace(/\)/g,'').replace(/\./g, '').replace(/\-/g,'');
    if (strPhone.length !== 10 && strPhone.length !== 11){
        this.value = '';
        $(this).css('border-color', 'red');
        return;
    }
    $(this).css('border-color', '#030303');
});
$("#cpass").blur(function() {
    var cpass = this.value;
    var pass = $("#pass").val();
    if (cpass !== pass) {
        this.value = '';
        $(this).css('border-color', 'red');
        return;
    }
    $(this).css('border-color', '#030303');
});
    //  Modal Atendimentos
$('.questionView').click(function() {
    event.preventDefault();
    var id = $(this).parents('tr').find("td:first-child").html();
    $('#title').html($('#title'+id).html());
    $('#status').html($('#status'+id).html());
    $('#openDate').html($('#openDate'+id).html());
    $('#closeDate').html($('#closeDate'+id).html());
    $('#question').html($('#question'+id).html());
    $('#answer').html($('#answer'+id).html());
    $('#answer').html() !== '' && $('.questReply').addClass('hidden');
    $('.modal').removeClass('hidden');
    $('.modal-body').removeClass('hidden');
});
$('.modal-close').click(function() {
    event.preventDefault();
    $('.modal').addClass('hidden');
    $('.modal-body').addClass('hidden');
    $('#title').html('');
    $('#status').html('');
    $('#openDate').html('');
    $('#closeDate').html('');
    $('#question').html('');
    $('#answer').html('');
    $('.questReply').hasClass('hidden') && $('.questReply').removeClass('hidden');
});
    //  Modal Categorias
$('.catView').click(function() {
    event.preventDefault();
    var id = $(this).parents('tr').find("td:first-child").html();
    $('#title').html($('#title'+id).html());
    $('#desc').html($('#desc'+id).html());
    $('.modal').removeClass('hidden');
    $('.modal-body').removeClass('hidden');
});
$('.cat-close').click(function() {
    event.preventDefault();
    $('.modal').addClass('hidden');
    $('.modal-body').addClass('hidden');
    $('#title').html('');
    $('#desc').html('');
});
$('.catEdit').click(function() {
    event.preventDefault();
    $('.catChange').each(function() {
        $(this).removeClass('hidden');
    });
    $(this).addClass('hidden');
    $('.cat-close').addClass('hidden');
    $('.catCancel').removeClass('hidden');
});
$('.catCancel').click(function() {
    event.preventDefault();
    $('.catChange').each(function() {
        $(this).addClass('hidden');
    });
    $(this).addClass('hidden');
    $('.cat-close').removeClass('hidden');
    $('.catEdit').removeClass('hidden');
});
    //  Modal Produtos
$('.prodView').click(function() {
    event.preventDefault();
    var id = $(this).parents('tr').find("td:first-child").html();
    $('#title').html($('#title'+id).html());
    $('#type').html($('#type'+id).html());
    $('#desc').html($('#desc'+id).html());
    $('.modal').removeClass('hidden');
    $('.modal-body').removeClass('hidden');
});
$('.prod-close').click(function() {
    event.preventDefault();
    $('.modal').addClass('hidden');
    $('.modal-body').addClass('hidden');
    $('#title').html('');
    $('#type').html('');
    $('#desc').html('');
});
$('.prodEdit').click(function() {
    event.preventDefault();
    $('.prodChange').each(function() {
        $(this).removeClass('hidden');
    });
    $(this).addClass('hidden');
    $('.prod-close').addClass('hidden');
    $('.prodCancel').removeClass('hidden');
});
$('.prodCancel').click(function() {
    event.preventDefault();
    $('.prodChange').each(function() {
        $(this).addClass('hidden');
    });
    $(this).addClass('hidden');
    $('.prod-close').removeClass('hidden');
    $('.prodEdit').removeClass('hidden');
});    

    //  Modal Delete
$('.delete').click(function() {
    event.preventDefault();
    $('.modal').removeClass('hidden');
    $('.modal-delete').removeClass('hidden');
    $('#delete-id').value($(this).parents('tr').find("td:first-child").html());
});
$('.delete-cancel').click(function() {
    event.preventDefault();
    $('.modal').addClass('hidden');
    $('.modal-delete').addClass('hidden');
    $('#delete-id').value('');
});

$('table').DataTable();