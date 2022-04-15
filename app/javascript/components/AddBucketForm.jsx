import React,{useState} from 'react'


export const AddBucketForm = () => {
  const [value, setValue] = useState("")
  return (
    <input type="text" value={value} onChange={event => setValue(event.target.value)}/>
  )
}

// we need to get the value from the input element(through the eventhandler)

//we need to save the value in the state through the setValue
//
