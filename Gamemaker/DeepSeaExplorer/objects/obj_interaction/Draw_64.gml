// Draw the quiz title (centered)
        var title = "You've found " + string(global.completed) + "/" + string(global.total) + " items!";
 
        // Adjust Y coordinate as needed (here at 30)
   
        draw_set_font(font_question);  // Assuming font_question has been defined already.
        //draw_set_color(c_aqua);
        
		var question_center_x = (display_get_gui_width() - string_width(title)) / 2;
            
		draw_text(question_center_x, 30, title);