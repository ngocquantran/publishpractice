function findSentence(sentence) {
    let word = prompt("Nhập từ cần tìm: ");
    let copy = nonAccentVietnamese(sentence);  
    let copyword = nonAccentVietnamese(word);
    let pattern = new RegExp("\\b[\\s\\w]*" + copyword + "\\b[\\s\\w]*\\b[.]");
    let result = copy.match(pattern);
    let list = getOriginalSentence(sentence);
    for (let i = 0; i < list.length; i++){
        if (nonAccentVietnamese(list[i]) == result) {
            result = list[i];
        }
    }
    // console.log(result);
    document.getElementById("key").innerHTML = "Tìm câu chứa từ: ";
    document.getElementById('input').innerHTML = sentence;
    document.getElementById("descript").innerHTML = "Câu đầu tiên chứa từ: "+word;
    document.getElementById("result").innerHTML = result;
}

function nonAccentVietnamese(str) {
    str = str.toLowerCase();
    str = str.replaceAll(/à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ/g, "a");
    str = str.replaceAll(/è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ/g, "e");
    str = str.replaceAll(/ì|í|ị|ỉ|ĩ/g, "i");
    str = str.replaceAll(/ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ/g, "o");
    str = str.replaceAll(/ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ/g, "u");
    str = str.replaceAll(/ỳ|ý|ỵ|ỷ|ỹ/g, "y");
    str = str.replaceAll(/đ/g, "d");
    str = str.replaceAll(/\u0300|\u0301|\u0303|\u0309|\u0323/g, "");
    str = str.replaceAll(/\u02C6|\u0306|\u031B/g, "");
    // str = str.replaceAll(/,|:/g, "");
    str = str.replaceAll(/\?|!/g, ".");
    str = str.replaceAll(/[^\w.\s]/g, "");

    // str = str.replaceAll(/[\s]?[^\w.][\s]?/g, " ");

  return str;
}



let sen =
    "Trong tất cả các \"mùa\": mùa mà em thích nhất là mùa xuân!"+
    " Vì khi mùa xuân tới, cũng là Tết, em được nghỉ học dài hơn, được bố " +
    "mẹ mua cho quần áo đẹp, được đi chơi nhiều nơi hơn. Khi tới mùa xuân, cây " +
    "cối đâm chồi nảy lộc sau giấc ngủ đông dài, mấy cây đào cũng nở những nụ hoa " +
    "màu hồng thật đẹp. Thời tiết mùa xuân ấm áp, dễ chịu chứ không lạnh giá " +
    "như mùa đông. Bố bảo, vào mùa xuân em cũng thêm một tuổi mới, vậy nên em " +
    "thích mùa xuân còn vì đến mùa xuân em cảm thấy mình lớn hơn, trưởng " +
    "thành hơn. Vào mùa xuân, trường em cũng tổ chức nhiều hoạt đông vui chơi " +
    "hơn như đi dã ngoại, cắm trại, rồi các trò chơi dân gian trong giờ giải lao. Em rất thích mùa xuân.";

function getOriginalSentence(paragragh) {
    let str = paragragh.replaceAll(/\?|!/g, ".");
    let list = str.split(".");
    for (let i = 0; i < list.length; i++){
        list[i] = list[i].trim() + ".";
        // console.log(list[i]);
    }
    return list;
}
getOriginalSentence(sen);

findSentence(sen);

