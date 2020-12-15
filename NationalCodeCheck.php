<script>
var isValidNationalCode = function(code) {
    if (code.length !== 10 || /(\d)(\1){9}/.test(code)) return false;

    var sum = 0,
        chars = code.split('');

    for (var i = 0; i < 9; i++) sum += +chars[i] * (10 - i);

    var lastDigit,
        remainder = sum % 11;

    lastDigit = remainder < 2 ? remainder : 11 - remainder;

    return +chars[9] === lastDigit;
};

// usage
alert(isValidNationalCode('0070364371'));
</script>