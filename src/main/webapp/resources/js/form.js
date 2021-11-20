function finalizingForm() {

    //zmienna quantityOfBags tworzona na podstawie elementów dokumentu zebranych poprzez id
    //quantityOfBags

    let quantityOfBags = document.getElementById("quantityOfBags");

    if (quantityOfBags.value === '1') {
        document.getElementById("finalQuantity").innerText = quantityOfBags.value + ' worek darów';
    }else if (quantityOfBags.value === '2' || quantityOfBags.value === '3' || quantityOfBags.value === '4'
    ){
        document.getElementById("finalQuantity").innerText = quantityOfBags.value + ' worki darów';
    } else {
        document.getElementById("finalQuantity").innerText = quantityOfBags.value + ' worków darów';
    }

    //zmienna tworzona na podstawie wybrania z dokumentu elementów input name institution

    let institutions = document.querySelectorAll('input[name="institution"]');
    let selected = 0;
    for (const item of institutions){
        if (item.checked){
            selected = item.value;
            break;
        }
    }
    //zmienne określające poszczególne elementy ankiety i ich wartości value

    let chosenInstitution = document.getElementById("chosen" + selected);
    document.getElementById("institutionName").innerText = chosenInstitution.innerText;

    let street = document.getElementById("formStreet");
    document.getElementById("liStreet").innerText = street.value;

    let city = document.getElementById("formCity");
    document.getElementById("liCity").innerText = city.value;

    let postCode = document.getElementById("formPostCode");
    document.getElementById("liPostCode").innerText = postCode.value;

    let phone = document.getElementById("formPhone");
    document.getElementById("liPhone").innerText = phone.value;

    let date = document.getElementById("formDate");
    document.getElementById("liData").innerText = date.value;

    let time = document.getElementById("formTime");
    document.getElementById("liTime").innerText = time.value;

    let pickUpComment = document.getElementById("formPickUpComment");
    if (pickUpComment.value === ''){
        document.getElementById('liComment').innerText = 'Brak uwag'
    } else {
        document.getElementById("liComment").innerText = pickUpComment.value;
    }
}