//any other field lost focus?
with(InputText_obj)
{
    //trigger save if editing
    event_user(0);
}
//start editing mode
m_editing = true;
keyboard_string = m_text;

