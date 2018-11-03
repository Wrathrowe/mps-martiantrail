event_inherited();

//if editing
if(m_editing) {
	//done editing
	m_editing = false;
	if string_length(keyboard_string) > 12 {
		keyboard_string = string_copy(keyboard_string, 1, 12);
	}
	m_text = keyboard_string;
	//save your string here
	crewSelected.name = m_text;
}

