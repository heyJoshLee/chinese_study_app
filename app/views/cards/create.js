
$("#card_english").val("");
$("#card_chinese").val("");
$("#card_pinyin").val("");
$("#card_notes").val("");
$("#cards_container").html("<%= escape_javascript render(:partial => 'cards/cards', :locals => {:cards => @cards}) %>")

