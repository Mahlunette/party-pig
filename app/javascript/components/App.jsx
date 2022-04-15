import React, { useEffect, useState } from 'react'
import { AddBucketForm } from './AddBucketForm';
import Bucket from './Bucket'
import Loader from './Loader';

const App = () => {
  const [party, setParty] = useState({});
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const url = '/parties/3'
    fetch(url)
      .then(response => {
        if (response.ok) {
          return response.json();
        }
        throw new Error("Network response was not ok.");
      })
      .then(response => {
        setParty(response);
        setLoading(false);
      })
      .catch(() => console.log('An error occurred while fetching the todos'));
  }, []);


  return (
    <div className='container'>
      <h1>{party.name}</h1>
      {
        loading ? <Loader /> : (
          <>
            <div className="bucket-list d-flex flex-wrap"> {
              party.buckets.map((bucket, index) => {
                return <Bucket key={index} name={bucket.name} tasks={bucket.tasks} />
              }
              )}
            </div>
            <AddBucketForm />
          </>
        )
      }

    </div>
  )
}

export default App
