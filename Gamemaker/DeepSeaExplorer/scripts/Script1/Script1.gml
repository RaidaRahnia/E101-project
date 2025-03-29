/// @description Wraps text to fit within a specified width
/// @param text The text to wrap
/// @param width The width to wrap the text within
/// @return The wrapped text

function scr_wrap_text(_text, _width) {
    var _wrapped_text = "";
    var _line = "";
    var _words = string_split(_text, " ");
    
    for (var i = 0; i < array_length(_words); i++) {
        var _word = _words[i];
        if (string_width(_line + _word) < _width) {
            _line += _word + " ";
        } else {
            _wrapped_text += _line + "\n";
            _line = _word + " ";
        }
    }
    _wrapped_text += _line;
    return _wrapped_text;
}