import React from 'react'

const AddNewCoctail = (props) => {
   
    return <form>
        Name: <input type="text" name="name" value= {props.currentName} onChange={props.handleInputChange} placeholder="Add a Name" /> <br />
        Gender:
        F:<input type="radio" name="male" checked={props.mValue} onChange={props.handleInputChange} />
        M:<input type="radio" name="female" checked={props.fValue} onChange={props.handleInputChange} /> <br />
        <button>Create </button>
      </form>;

}
export default AddNewCoctail; 


        