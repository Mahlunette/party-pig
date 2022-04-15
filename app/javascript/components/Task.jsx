import React from 'react'

const Task = (props) => {
  return (
    < div className="task-container border border-primary mb-3 text-center p-2">
      <h3>{props.name}</h3>
      <p>{props.description}</p>
      <p><em>{props.completed ? "completed" : "pending"}</em></p>
    </div>
  )
}
export default Task
