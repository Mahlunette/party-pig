import React, {useState, useEffect} from 'react'
import Task from './Task'

const Bucket = (props) => {
  return (
    < div className="bucket-container">
     <h2>{props.name}</h2>
      <Task />
    </div>
  )
}
export default Bucket
