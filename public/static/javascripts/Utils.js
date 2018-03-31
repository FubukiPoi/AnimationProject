function Check() {
    var animation_name = document.getElementsByName('animation_name')[0].value;
    var number = document.getElementsByName('number')[0].value;
    var date_details = document.getElementsByName('date_details')[0].value;
    var status = document.getElementsByName('status')[0].value;
    if (animation_name != null && number != null) {
        return true;
    } else {
        alert('please input the info.');
        return false;
    }
}

/*function addNum(input){
    var id = input.parentNode.parentNode.parentNode.rowIndex;
    var number = document.getElementById("animation_list").rows[id].cells[2].innerText;
    alert(parseInt(number)+1);
    var num = parseInt(number)+1;
    window.location.href = 'animationEdit?number=' + num;
}*/

function Delete(id) {
    var returnVal = window.confirm("是否删除？", "!!");
    if (returnVal) {
        window.location.href = 'animationDelete?animation_id=' + id;
    }
}

function editAnimation(input) {
    var id = input.parentNode.parentNode.parentNode.rowIndex;
    var animation_id = document.getElementById("animation_list").rows[id].cells[0].innerText.trim();
    var animation_name = document.getElementById("animation_list").rows[id].cells[1].innerText;
    var number = document.getElementById("animation_list").rows[id].cells[2].innerText;
    var year = document.getElementById("animation_list").rows[id].cells[3].innerText;
    var season = document.getElementById("animation_list").rows[id].cells[4].innerText;
    var status = document.getElementById("animation_list").rows[id].cells[5].innerText;
    if (status == '追番') {
        status = '1';
    } else if (status == '补番') {
        status = '2';
    } else if (status == '完结') {
        status = '3';
    } else if (status == '弃番') {
        status = '4';
    }
    var editForm = document.getElementById("editForm");
    editForm.animation_id.value = animation_id;
    editForm.animation_name.value = animation_name;
    editForm.number.value = number;
    editForm.year.value = year;
    editForm.season.value = season;
    editForm.edit_status_select.value = status;
}

function autoDate() {
    var addForm = document.getElementById("addForm");
    var date = new Date();
    var year = date.getFullYear();
    var month = date.getMonth();
    var nowSeson;
    if(month>=0 && month<=2){
        nowSeson = '冬';
    }else if(month>=3 && month<=5){
        nowSeson = '春';
    }else if(month>=6 && month<=8){
        nowSeson = '夏';
    }else if(month>=9 && month<=12){
        nowSeson = '秋';
    }
    addForm.number.value = '0';
    addForm.year.value = year;
    addForm.season.value = nowSeson;
}

function ajaxTest(){
    var configObj = {
       method:'get',
       url:'/',
       async:true,
       dataType:'json',
       success:function(result){
            alert(result.data);
       }
    }
$.ajax(configObj);//通过$.ajax函数进行调用。
}