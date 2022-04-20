import React, { useState } from 'react'


export const AddBucketForm = () => {
  const [value, setValue] = useState("")
  const handleSubmit = (bucketName) => {
    

  }
  const handleKeyUp = event => {
    if (event.key === 'Enter') {
      handleSubmit(value);
    }
  }
  return (
    <input type="text"
      value={value}
      onChange={event => setValue(event.target.value)}
      onKeyUp={handleKeyUp }
    />
  )
}

//we need to save the value in the state through the setValue
// we need to send the params(url) to the controller
// controller saves the bucket to the db
// condition: if successful, send a message to the view and if not, send another message.
// if updated: change the state, if not, nothing happens.
//
