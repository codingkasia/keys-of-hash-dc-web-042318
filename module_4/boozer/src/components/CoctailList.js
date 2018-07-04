import React from 'react'
import CoctailListItem from './CoctailListItem'

const CoctailList = (props) => {
    return (
        < div > {props.showAllCoctails.map(coctail => <CoctailListItem key={coctail.id} coctail={coctail}/>)} </div>
    )

    
}
export default CoctailList 