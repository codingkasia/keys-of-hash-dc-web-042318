import React from 'react'

const CoctailListItem = (props) => {
    return (
            <div>
                <div>
                {`*********************************`}
                </div>
                <div>
               Name: {props.coctail.name}
           </div>
                Description: {props.coctail.description}
            </div>
    )

}
export default CoctailListItem; 
