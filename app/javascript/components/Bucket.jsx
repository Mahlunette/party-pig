import React, { useState, useEffect } from 'react'
import Task from './Task'


const Bucket = (props) => {
  return (
    < div className="bucket-container card p-4 text-center">
      <h2>{props.name}</h2>
      {
        props.tasks.map(task => (
          <Task key={task.id}
          name={task.name}
          description={task.description}
          index={task.index}
          completed={task.completed}/>
        ))
      }
    </div>
  )
}
export default Bucket
